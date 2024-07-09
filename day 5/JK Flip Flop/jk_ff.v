module jk_ff(j,k,clk,reset,q,qb);
input j,k,clk,reset;
output q,qb;
wire j,k,clk,reset,qb;
reg q;
always @(posedge clk)
begin
if(reset)
q<=1'b0;
else if (j==1'b0 && k==1'b0) q<=q;
else if (j==1'b0 && k==1'b1) q<=1'b0;
else if (j==1'b1 && k==1'b0) q<=1'b1;
else if (j==1'b1 && k==1'b1) q<=~q;
end
assign qb=~q;
endmodule
