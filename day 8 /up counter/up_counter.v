module up_counter(input [3:0]a,
                  input rst,clk,
                  output reg [3:0]y);
  
  always @(posedge clk)begin
    
    if (rst) 
      y<=4'b0000;
    
    else  
        y<=a+1;
       end
endmodule
