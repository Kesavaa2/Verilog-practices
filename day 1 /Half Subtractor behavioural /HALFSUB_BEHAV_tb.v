module  HALFSUB_BEHAV_tb;
reg a, b;
wire diff, borr;
 HALFSUB_BEHAV hs(a, b, diff, borr);
initial
begin
$monitor("At time %0t: a=%b b=%b, diff=%b, borr=%b",$time, a,b,diff,borr);
a = 0; b = 0; #1;
a = 0; b = 1; #1;
a = 1; b = 0; #1;
a = 1; b = 1; #1;
end 
endmodule
