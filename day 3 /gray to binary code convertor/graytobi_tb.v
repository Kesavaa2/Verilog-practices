module graytobi_tb;
 reg [3:0] G;
 wire [3:0]B;
 bitogray b2g(G,B);
 initial 
begin
 $monitor(G,B);
G = 4'b1011; #10;
G = 4'b0111; #10; 
G = 4'b0101; #10;
G = 4'b1100; #10; 
G = 4'b1111; #10;
end 
endmodule
