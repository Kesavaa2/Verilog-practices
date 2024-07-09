module ff(clk, d, clr, q);
	input  clk, d, clr;
	output q;
	reg    q;
	always @(negedge clk or posedge clr) 
        begin
          if (clr==1)
	      q <= 0;
	   else
	      q <= d;
	end
        endmodule
