module rs_siso(
input clk,rst,
input s_in,
output reg p_out
);
reg [2:0]shift_reg;

always@(posedge clk or posedge rst)
begin
if (rst) begin
 shift_reg <= 3'b000;
 p_out <= 0;
end
else begin
 shift_reg <= {s_in,shift_reg[2:1]};
 p_out <= shift_reg;
end
end
endmodule
