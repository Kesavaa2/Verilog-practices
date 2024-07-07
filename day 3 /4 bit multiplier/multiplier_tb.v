module multiplier_tb;
reg [3:0]a;
reg [3:0]b;
wire [7:0]y;

multiplier mplr(a,b,y);
initial begin
a=4'b1100;b=4'b1100;#10;
a=4'b1101;b=4'b1100;#10;
a=4'b1100;b=4'b1111;#10;
a=4'b1010;b=4'b1100;#10;
$finish;
end
initial begin
$monitor("at time :%0t,a=%0b,b=%0b,y=%0b",$time ,a,b,y);
end
endmodule
