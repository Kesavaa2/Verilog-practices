module logic_gates_tb;
reg a,b;
wire c,d,e,f,g,h,i;

logic_gates LG(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.i(i));

initial
begin
 
a=0;b=0;
#20;

a=0;b=1;
#20;

a=1;b=0;
#20;

a=1;b=1;
#20;

$finish;
end
endmodule
