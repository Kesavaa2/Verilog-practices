module half_adder(input a, 
                  input b,
                  output sum,
                  output Cout);
assign sum=a^b;
assign Cout=a&b;
endmodule
