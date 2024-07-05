module full_sub (
    input wire A,     // Minuend
    input wire B,     // Subtrahend
    input wire Bin,   // Borrow-in
    output wire D,    // Difference
    output wire Bout  // Borrow-out
);

    
    assign D = A ^ B ^ Bin;            
    assign Bout = (~A & B) | ((~A | B) & Bin);  

endmodule
