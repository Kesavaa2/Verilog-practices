module priority_enco_tb; 
reg [7:0] D;
wire [2:0] y;
 priority_enco pri_en(D, y);
 initial 
begin
 $monitor("D = %b -> y = %0b", D, y);
 repeat(6)
 begin 
D=$random;
 #10;
 end 
end 
endmodule
