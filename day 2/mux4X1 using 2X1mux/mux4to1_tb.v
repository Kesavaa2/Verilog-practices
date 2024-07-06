module mux4to1_tb;
reg a,b,c,d;
reg s1,s0;
wire y;
mux4to1 m4u2(s1,s0,a,b,c,d,y);
initial begin
$monitor("s1=%0b,s0=%0b,a=%0b,b=%0b,c=%0b,d=%0b,y=%0b",s1,s0,a,b,c,d,y);
{a,b,c,d}=4'h5;
repeat(6) begin
{s1,s0}=$random;
#10;
end
end
endmodule
