module mooreno_tb;
reg clk,rst,a;
wire y;

mooreno NOMORE(clk,rst,a,y);
always #5 clk=~clk;
initial begin
rst=0; clk=0;

#7 rst=1;

#10 a=1;
#10 a=0;
#10 a=1;
#10 a=1;
#10 a=0;
#10 a=1;
#10 a=1;
#10 a=0;
#10 a=1;
#10 a=1;
#10 a=0;
#10 a=1;
#10 a=1;
#10 a=0;
#10 a=1;
#10 a=1;
#10 a=0;
#10 a=1;
#10 a=1;

$finish;
end
endmodule
