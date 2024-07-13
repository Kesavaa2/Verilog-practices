module rs_sipo(
input clk,rst,
input s_in,
output reg[3:0]p_out
);
reg [3:0]shift_reg;

always@(posedge clk or posedge rst)
begin
if (rst) begin
 shift_reg <= 4'b0000;
 p_out <= 4'b0000;
end
else begin
 shift_reg <= {s_in,shift_reg[3:1]};
 p_out <= shift_reg;
end
end
endmodule
