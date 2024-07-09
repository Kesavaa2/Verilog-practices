module sr_ff_tb;
reg s,r,clk,reset;
wire q,qb;

sr_ff SRFF(.s(s),.r(r),.clk(clk),.reset(reset),.q(q),.qb(qb));
initial begin
clk=0;
s=0;r=0;
reset=1;

#5 reset=1;
#20 reset=0;

$monitor($time,"\ts=%b\t,r=%b\t,clk=%b\t,reset=%b\t,q=%b\t,qb=%b",s,r,clk,reset,q,qb);
end
always #30 clk=~clk;
always #10 s=~s;
always #20 r=~r;
endmodule
