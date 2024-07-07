module multiplier
(
input wire[3:0]a,
input wire[3:0]b,
output reg [7:0]y
);

assign y=a*b;
endmodule
