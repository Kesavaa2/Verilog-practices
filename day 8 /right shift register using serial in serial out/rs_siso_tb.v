module rs_siso_tb;
reg clk,rst;
reg s_in;
wire p_out;

siso SISO(clk,rst,s_in,p_out);

always #5 clk=~clk;
initial begin
clk=0;rst=1; s_in=1;
#20 rst=0; s_in=1;#30;
#150 $stop;
$monitor("clk=%b,rst=%b,s_in=%b,p_out=%b",$time,clk,rst,s_in,p_out);
$finish;
end
endmodule
