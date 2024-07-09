 module flipflop (clk, d, s, q);
        input  clk, d, s;
        output q;
        reg    q;
        always @(posedge clk)
        begin
           if (s)
              q <= 1;
           else
              q <= d;
        end
        endmodule
