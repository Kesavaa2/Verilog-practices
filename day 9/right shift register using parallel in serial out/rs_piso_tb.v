module rs_piso_tb;
reg clk,rst;
reg [3:0]p_in;
wire s_out;

rs_piso PISO(clk,rst,p_in,s_out);

always #5 clk=~clk;
initial begin
clk=0;rst=1; p_in=4'b1101;
#20 rst=0; p_in=4'b1011;#30;
#150 $finish;
$monitor("clk=%b,rst=%b,p_in=%b,s_out=%b",$time,clk,rst,p_in,s_out);
end
endmodule
