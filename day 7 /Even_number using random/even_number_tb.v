module even_number_tb;
  reg [7:0]a;
  
  even_number even(.a(a));
  
  initial begin
    a=$random;
    #20
    $finish;
  end
  endmodule
