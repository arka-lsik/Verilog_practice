//Verilog code for to count the number of ones in particular 16 bit input sequence
module bin_count_one( A, ones);
  input [15:0]A;   //16 bit input sequence
  output reg [5:0]ones;  //maximum number of ones can come

  integer i;
  always@(*)
    ones=0;
    for(i=0;i<16;i++)
      if(A[i] == 1'b1)
       ones = ones +1;
endmodule
  
