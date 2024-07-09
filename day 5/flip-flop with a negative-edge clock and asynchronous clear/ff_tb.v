module ff_tb;
  reg clk,d,clr;
  wire q;
  
  flop ff(clk,d,clr,q);
  always #3 clk=~clk;
    initial begin
      clk=0;clr=1;d=1;
      
      #6 clr=0;d=1;
      
      $monitor("clk=%0b,d=%0b,clr=%0b,q=%0b",clk,d,clr,q);
      $finish;
    end
endmodule
  
