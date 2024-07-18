module operator(opocode,a, b, Y,c,d, R,A);
input a;
input b;
input [2:0] c,d;

input [4:0] opocode;
output reg [ 5:0] R;
output reg  Y;
output reg [2:0] A ;
always @(*)
begin
case(opocode) 
// arithematic operaters

5'b00000  : Y= a + b;   //add 
5'b00001  : Y= a - b;  //sub                          
5'b00010  : Y= a * b;   //multiply                     
5'b00011  : Y= a / b;   //divide
5'b00100  : Y= a % b;   //modulus

// bitwise operater

5'b00101  : A = c | d;//or
5'b00110  : A = c ^ d;  //xor                            
5'b00111  : A = ~c;  //nor

//shift  operater

5'b01000  : A = c << 2;//left shit 
5'b01001  : A = d >> 1;//right shift                      
5'b01010  : A = c>>> 1 ;//arithematic right shift

// comparsion operater

5'b01011  : Y= a == b; //equal comparater 
5'b01100  : Y= a != b; //not equal comparater            
5'b01101  : Y= a > b; //greater than comparter
5'b01110  : Y= a >= b; //greater than equal comparter
5'b01111  : Y= a < b; //lesser than comparter                    
5'b10000  : Y=  a <= b; //greater than equal comparter

// Logical operators


5'b10001  : Y= a && b; 
5'b10010  : Y= a || b;                     
5'b10011  : Y= !a;      

5'b10100  : Y= (a > b) ? a : b;                                      

5'b10101  : Y= &c; 

5'b10110: R = {c,d};                               

endcase
end
endmodule
