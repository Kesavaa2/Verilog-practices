module operator_tb;

  
    reg [4:0] opocode;
    reg a;
    reg b;
    reg [2:0] c;
    reg [2:0] d;

    wire Y;
    wire [5:0] R;
    wire [2:0] A;

    
        operator uut (
     	    .opocode(opocode), 
	    .a(a), 
	    .b(b), 
	    .Y(Y), 
	    .c(c), 
	    .d(d), 
	    .R(R), 
	    .A(A)
    );

    initial begin
	
	    a = 1;
	    b = 0;
            c = 3'b101;
	    d = 3'b001;
      
      #10;opocode = 5'b00000;//arithematic operaters
       #10;opocode = 5'b00010;
      #10;opocode = 5'b00101;//bitwise operater
      #10;opocode = 5'b01000; //shift  operater
      #10;opocode = 5'b01011; //comparsion operater
      #10;opocode = 5'b10001; // logical operater
      #10;opocode = 5'b10100; // conditional operater
      #10;opocode = 5'b10101; // reduction operater
	  #10;opocode = 5'b10110; // concatenation operater

      $dumpfile("operator_tb.vcd");
      $dumpvars;
      $monitor("at time: a=%d, b=%d, Y=%b,c=%b,d=%b, R=%b,A=%b",$time,a, b, Y,c,d, R,A);
    end  
endmodule
