module rs_pipo_tb;
reg clk,rst;
reg [3:0]p_in;
wire [3:0]p_out;

rs_pipo PIPO(clk,rst,p_in,p_out);
initial begin
clk=0;
forever #5 clk = ~clk;
end
initial begin
rst=1; p_in=4'b1101;

#10 rst=0; 
#10 p_in=4'b1011;
#10 p_in=4'b1001;
#10 p_in=4'b1010;
#10 p_in=4'b0011;

#50;
 $finish;
$monitor("clk=%b,rst=%b,p_in=%b,p_out=%b",$time,clk,rst,p_in,p_out);
end
endmodule
