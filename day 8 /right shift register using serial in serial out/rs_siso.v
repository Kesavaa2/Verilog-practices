module rs_siso(
input clk,rst,
input s_in,
output reg s_out
);
reg [2:0]shift_reg;

always@(posedge clk or posedge rst)
begin
if (rst) begin
 shift_reg <= 3'b000;
 s_out <= 0;
end
else begin
 shift_reg <= {s_in,shift_reg[2:1]};
 s_out <= shift_reg[0];
end
end
endmodule
