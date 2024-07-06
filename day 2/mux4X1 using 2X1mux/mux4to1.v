module mux4to1(input a,b,c,d,s1,s0,output reg y);

wire y0, y1;
  
  mux2to1 m1(s1, c, d, y1);
  mux2to1 m2(s1, a, b, y0);
  mux2to1 m3(s0, y0, y1, y);
endmodule

module mux2to1(input a,b,s, output reg y);
assign y=s?a:b;
endmodule
