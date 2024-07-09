module dff(clk,data,reset,q);
input clk,data,reset;
output q;
reg q;
always @(posedge clk)
if(reset)begin
q<=1'b0;
end
else begin
q<=data;
end
endmodule
