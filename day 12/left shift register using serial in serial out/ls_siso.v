module ls_siso(
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
  shift_reg <= {shift_reg[1:0],s_in};
  s_out <= shift_reg[2];
end
end
endmodule
