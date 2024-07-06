module demux1to4_tb;
reg a;
reg [1:0]s;
wire y0,y1,y2,y3;

demux4to1 dmfo(a,s,y0,y1,y2,y3);
initial begin
$monitor("a=%b,s=%b,y0=%0b,y1=%0b,y2=%0b,y3=%0b",a,s,y0,y1,y2,y3);
s=2'b00;a=1;#5;
s=2'b01;a=1;#5;
s=2'b10;a=1;#5;
s=2'b11;a=1;#5;
end
endmodule
