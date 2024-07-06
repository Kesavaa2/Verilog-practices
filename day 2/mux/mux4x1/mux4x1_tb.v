module mux4x1_tb;

reg [1:0] sel;
reg [3:0] in;
wire  out;

mux4x1 ge(
    .sel(sel),
    .in(in),
    .out(out)
);

initial begin
    // Test case 1
    sel = 2'b00;
    in[0] = 4'b0000;
    in[1] = 4'b0010;
    in[2] = 4'b0100;
    in[3] = 4'b1000;
    #10;


    sel = 2'b01;
    in[0] = 4'b0000;
    in[1] = 4'b0010;
    in[2] = 4'b0100;
    in[3] = 4'b1000;
    #10;

    sel = 2'b10;
    in[0] = 4'b0000;
    in[1] = 4'b0010;
    in[2] = 4'b0100;
    in[3] = 4'b1000;
    #10;

    sel = 2'b11;
    in[0] = 4'b0000;
    in[1] = 4'b0010;
    in[2] = 4'b0100;
    in[3] = 4'b1000;
    #10;
    
    $finish;
end

initial begin
    $monitor("At time %0t, sel = %b,in[0]=%b,in[1]=%b,in[2]=%b,in[3]=%b, out = %b", $time, sel,in[0],in[1],in[2],in[3],out);
end

endmodule
