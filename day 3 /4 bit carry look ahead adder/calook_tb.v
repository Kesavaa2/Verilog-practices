module calook_tb;
  reg [3:0]A, B; 
  reg Cin;
  wire [3:0] S;
  wire Cout;
  wire[4:0] add;
  
calook cla(A, B, Cin, S, Cout);
  
  assign add = {Cout, S};
  initial begin
    $monitor("A = %b: B = %b, Cin = %b --> S = %b, Cout = %b, Addition = %0d", A, B, Cin, S, Cout, add);
    A = 1; B = 0; Cin = 1; #10;
    A = 4'b0011; B =4'b0100; Cin = 1; #10;
    A = 4'b1100; B = 4'b0110; Cin = 0; #10;
    A = 4'1110; B = 0; Cin = 1; #10;
  end
endmodule
