module jk_ff_tb;
reg j,k,clk,reset;
wire q,qb;

jk_ff SRFF(.j(j),.k(k),.clk(clk),.reset(reset),.q(q),.qb(qb));
initial begin
clk=0;
j=0;k=0;
reset=1;

#5 reset=1;
#50 reset=0;

$monitor($time,"\tj=%b\t,k=%b\t,clk=%b\t,reset=%b\t,q=%b\t,qb=%b",j,k,clk,reset,q,qb);
end
always #30 clk=~clk;
always #10 j=~j;
always #20 k=~k;
endmodule
