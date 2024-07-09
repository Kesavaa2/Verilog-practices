module dff_tb;
reg clk,data,reset;
wire q;

dff DF(.clk(clk),.data(data),.reset(reset),.q(q));
initial begin
clk=0;
data=0;
reset=1;

#5 reset=1;
#5 reset=0;

$monitor($time,"\tclk=%b\t,data=%b\t,reset=%b\t,q=%b",clk,data,reset,q);
end
always #10 clk=~clk;
always #10 data=~data;
endmodule
