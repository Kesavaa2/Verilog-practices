
module down_counter_tb;
  reg [3:0]a;
  reg rst,clk;
  wire [3:0]y;
  
  up_counter uc(a,rst,clk,y);
  
  always #5 clk=~clk;
  
  initial begin
  clk=0; rst=1;
    
    #10 rst=0;
     a=4'h0; #10;
      a=4'h2; #10;
      a=4'h3; #10;
      a=4'h4; #10;
      a=4'h5; #10;
      a=4'h6; #10;
    $finish;#10;

  end
   
  initial begin
    $dumpfile("up_counter_tb.vcd");
    $dumpvars(1);
  end
endmodule
