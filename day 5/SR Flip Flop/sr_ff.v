module sr_ff(s,r,clk,reset,q,qb);
input s,r,clk,reset;
output q,qb;
wire s,r,clk,reset,qb;
reg q;
always @(posedge clk)
begin
if(reset)
q<=1'b0;
else if (s==1'b0 && r==1'b0) q<=q;
else if (s==1'b0 && r==1'b1) q<=1'b0;
else if (s==1'b1 && r==1'b0) q<=1'b1;
else if (s==1'b1 && r==1'b1) q<=1'bx;
end
assign qb=~q;
endmodule
