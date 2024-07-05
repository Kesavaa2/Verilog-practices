module FULLSUB_BEHAV
(
input a,b,c,
output Borr,Diff
);

assign{Borr,Diff}=a-b-c;
endmodule
