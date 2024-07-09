module flop_tb;
  reg clk,d,s;
  wire q;
  
  flop ff(clk,d,s,q);
  always #5 clk=~clk;
    initial begin
      clk=0;s=0;d=0;
      
      #5 s=0;
      #5 d=1;
      #5 s=1;
      #5 s=0;
      #5 d=0;
      #5 s=0;
      #5 d=1;
      #5 s=1;
      #5 s=0;
      #5 d=1;
    
      $monitor("At time %t: clk=%b, d = %b, s = %b, q = %b", $time, clk ,d, s, q);
#10; $finish;      
    end
  initial begin
    $dumpfile("flop_tb.vcd"); 
    $dumpvars(1);
  end
endmodule
