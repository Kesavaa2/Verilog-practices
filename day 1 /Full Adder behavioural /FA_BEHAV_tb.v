module FA_BEHAV_tb;
reg a,b,c;
wire Cout,sum;
integer i;

FA_BEHAV FAB(.a(a),.b(b),.c(c),.Cout(Cout),.sum(sum));

initial
begin
a=1;b=1;c=1;
#50

{a,b,c}<=3'b000;
for(i=1;i<=9;i=i+1)
 #10 {a,b,c}<=$random %8;
#10 $finish;
end
endmodule
