module ring_tb;
parameter width=4;
  reg clk,reset;
  wire [3:0] cout;

  ring rc(
    .clk(clk),
    .reset(reset),
    .cout(cout)
  );

  always #5 clk = ~clk;

  initial begin
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #100 $finish;
  end

endmodule
