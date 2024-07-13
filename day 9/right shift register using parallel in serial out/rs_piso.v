module rs_piso(
input clk,rst,
input [3:0]p_in,
output reg s_out
);
reg [3:0]shift_reg;

always@(posedge clk or posedge rst)
begin
if (rst) begin
 shift_reg <= 4'b0000;
 s_out <= 0;
end
else begin
 shift_reg <= {p_in,shift_reg[3:1]};
 s_out <= shift_reg[0];
end
end
endmodule
