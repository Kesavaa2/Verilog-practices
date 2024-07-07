 module bitogray_tb;
 reg [3:0] B;
 wire [3:0]G;
 bitogray b2g(B,G);
 initial 
begin
 $monitor(B,G);
B = 4'b1011; #10;
B = 4'b0111; #10; 
B = 4'b0101; #10;
B = 4'b1100; #10; 
B = 4'b1111; #10;
end 
endmodule
