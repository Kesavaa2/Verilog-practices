module mooreov(input clk,rst,a, output reg y);

reg [2:0]S,nextstate;

parameter S0=3'b000;
parameter S1=3'b001;
parameter S2=3'b010;
parameter S3=3'b011;
parameter S4=3'b100;
parameter S5=3'b101;
parameter S6=3'b110;
parameter S7=3'b111;

always @(posedge clk , posedge rst)begin
if (rst==0) S<=S0;
else S <= nextstate;
end

always @(*)begin
case (S)

S0:begin
if(a==0) nextstate<=S1;
else nextstate<=S0;
end

S1:begin
if(a==1) nextstate<=S2;
else nextstate<=S1;
end

S2:begin
if(a==1) nextstate<=S3;
else nextstate<=S1;
end

S3:begin
if(a==0) nextstate<=S4;
else nextstate<=S0;
end

S4:begin
if(a==1) nextstate<=S5;
else nextstate<=S1;
end

S5:begin
if(a==1) nextstate<=S6;
else nextstate<=S1;
end

S6:begin
if(a==0) nextstate<=S7;
else nextstate<=S0;
end

S7:begin
if(a==1) nextstate<=S5;
else nextstate<=S4;
end
endcase
end

always@(*)begin
case (S)
S0:y<=0;
S1:y<=0;
S2:y<=0;
S3:y<=0;
S4:y<=0;
S5:y<=0;
S6:y<=0;
S7:y<=1;
default: y<=0;
endcase
end
endmodule

