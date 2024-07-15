module unshr(
input clk,rst,
input [1:0]sel,
input [3:0]d_in,
input s_right_din,
input s_left_din,
output reg[3:0]d_out,
output s_right_dout,
output s_left_dout);

always @(posedge clk) begin
if(!rst) d_out<=0;
else begin
case(sel)
2'h1:d_out<={s_right_din,d_out[3:1]};//right shift
2'h2:d_out<={d_out[2:0],s_left_din};//left shift
2'h3:d_out<=d_in; //p-in p-out
default:d_out<=d_in;//no change
endcase
end
end
assign s_right_dout = d_out[0];
assign s_left_dout = d_out[3];
endmodule
