module smallest_num(
  input [6:0]z[0:7]);
  
  reg [6:0]small_number;

  initial begin
    z[0]=7'b0011011;
    z[1]=7'b1011001;
    z[2]=7'b0111011;
    z[3]=7'b0001011;
    z[4]=7'b1111011;
    z[5]=7'b0011111;
    z[6]=7'b1011011;
    z[7]=7'b0011010;
  end
  
  initial begin
  small_number=z[0];
  end
  
  initial begin
    integer i;
    for(i=1;i<=7;i=i+1)begin
      if(z[i]<=small_number)
        small_number=z[i];
    end
    $display("small_number=%0b",small_number);
  end
  
endmodule
