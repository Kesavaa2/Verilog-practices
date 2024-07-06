module demux1to4(
input a,
input [1:0]s,
output reg y0,y1,y2,y3
);
always@(*)begin 
case(s)
2'h0:y0=a;
2'h1:y1=a;
2'h2:y2=a;
2'h3:y3=a;
default:$display("invalid sel input");
endcase
end
endmodule
