module jk_flip_flop_tb;

    reg clk;
    reg reset;
    reg j;
    reg k;
    wire q;
  
    jk_flip_flop uut (
        .clk(clk),
        .reset(reset),
        .j(j),
        .k(k),
        .q(q)
    );

  
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; j = 0; k = 0;
        #10;
        
        reset = 0; j = 0; k = 0;  
        #10; j = 1; k = 0;        
        #10; j = 0; k = 1;        
        #10; j = 1; k = 1;        
        #10; j = 1; k = 1;        
        #10; j = 0; k = 0;        
        #10; j = 0; k = 1;        
        #10; j = 1; k = 0;        
        
        #10; reset = 1;         
        #10; reset = 0; j = 1; k = 1;  
        #10;

        $stop;  
    end

endmodule
