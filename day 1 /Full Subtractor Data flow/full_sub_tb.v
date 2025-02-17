module full_sub_tb;
    reg A;
    reg B;
    reg Bin;
    wire D;
    wire Bout;

    
    full_sub uut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .D(D),
        .Bout(Bout)
    );

    
    initial begin
        $monitor($time, " A=%b, B=%b, Bin=%b, D=%b, Bout=%b", A, B, Bin, D, Bout);

      
        A = 0; B = 0; Bin = 0;
        #10;
        
        A = 0; B = 0; Bin = 1;
        #10;
        
        A = 0; B = 1; Bin = 0;
        #10;
        
        A = 0; B = 1; Bin = 1;
        #10;
        
        A = 1; B = 0; Bin = 0;
        #10;
        
        A = 1; B = 0; Bin = 1;
        #10;
      
        A = 1; B = 1; Bin = 0;
        #10;
        
        A = 1; B = 1; Bin = 1;
        #10;
        
        $finish;
    end

endmodule
