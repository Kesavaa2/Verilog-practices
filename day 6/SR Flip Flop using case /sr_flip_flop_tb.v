module sr_flip_flop_tb;

    reg clk;
    reg reset;
    reg s;
    reg r;
    wire q;
  
    sr_flip_flop uut (
        .clk(clk),
        .reset(reset),
        .s(s),
        .r(r),
        .q(q)
    );

  
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; s = 0; r = 0;
        #10;
        
        reset = 0; s= 0; r = 0;  
        #10; s = 1; r = 0;        
        #10; s = 0; r = 1;        
        #10; s = 1; r = 1;        
        #10; s = 1; r = 1;        
        #10; s = 0; r = 0;        
        #10; s = 0; r = 1;        
        #10; s = 1; r = 0;        
        
        #10; reset = 1;         
        #10; reset = 0; s = 1; r = 1;  
        #10;

        $stop;  
    end

endmodule
