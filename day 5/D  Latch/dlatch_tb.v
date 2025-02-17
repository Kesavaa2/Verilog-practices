module dlatch_tb;
reg data,en,reset;
wire q;

dlatch DL(data,en,reset,q);
initial
begin
en=0;
data=0;
#5 reset=1;
#30 reset=0;
$monitor($time,"\ten=%b\t,reset=%b\t,data=%b\t,q=%b",en,data,reset,q);
#160 $finish;
end
always #20 en=~en;
always #40data=~data;
endmodule
