module RCA_tb;
    reg [3:0] A;      
    reg [3:0] B;      
    reg Cin;          
    wire [3:0] S;   
    wire Cout;        

RCA  rca(A, B, Cin, S, Cout);

initial 
begin
        
$monitor("at time %0t:A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A, B, Cin, S, Cout);

A = 4'b0000; B = 4'b0000; Cin = 0; #10;
A = 4'b0001; B = 4'b0001; Cin = 0; #10;
A = 4'b0011; B = 4'b0101; Cin = 0; #10;
A = 4'b1111; B = 4'b0001; Cin = 0; #10;
A = 4'b1111; B = 4'b1111; Cin = 0; #10;
A = 4'b1010; B = 4'b0101; Cin = 1; #10;

$finish;
end
endmodule
