module encoder8x3_tb;
reg [7:0]a;
wire[2:0]y;
integer i;
encoder8x3 en8x3(a,y);
initial begin
a=8'b1;
#10;
for(i=0;i<8;i++)begin
$display("a=%h(in dec:%0d),y=%0h",a,i,y);
a=a>>1;
#10;
end
end
endmodule
