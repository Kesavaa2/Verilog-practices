module FULLSUB_BEHAV_tb;
reg a,b,c;
wire Borr,Diff;
integer i;

FULLSUB_BEHAV FAB(.a(a),.b(b),.c(c),.Borr(Borr),.Diff(Diff));

initial
begin

{a,b,c}<=3'b000;
for(i=1;i<=8;i=i+1)
#10 ;
$finish;
end
endmodule
