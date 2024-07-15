module unshr_tb;

reg clk,rst;
reg [1:0]sel;
reg [3:0]d_in;
reg s_right_din;
reg s_left_din;
wire[3:0]d_out;
wire s_right_dout;
wire s_left_dout;

unshr usr(clk,rst,sel,d_in,s_right_din,s_left_din,d_out,s_right_dout,s_left_dout);

always #3 clk=~clk;
initial begin
clk=0;rst=0;
#5 rst=1;


d_in=4'b1101;
s_right_din=1;
s_left_din=0;

sel=2'b01;#15;
sel=2'b11;#20;


d_in=4'b0111;
sel=2'b11;#30;

$finish;
end
endmodule
