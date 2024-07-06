module decoder3to8_tb;

reg [2:0] D;
wire [7:0] y;
  
decoder3to8 uut (D,y);

initial begin
 
    D = 3'b000; #10;
    D = 3'b001; #10;
    D = 3'b010; #10;
    D = 3'b011; #10;
    D = 3'b100; #10;
    D = 3'b101; #10;
    D = 3'b110; #10;
    D = 3'b111; #10;
    
  
end

initial begin
    $monitor("At time %0t: D = %b, y = %b", $time, D, y);
end

endmodule
