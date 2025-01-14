//8 bit Barrel shifter behavioral modeling
//This will create the mux based barrel shifter in architecturally, Some times is a part of ALU for shifting operations
module (In,out,lr,n);
  input [7:0]In;
  input lr;         //control bits to determines the shift deirection.
  output [2:0]n;   //Specifies the number of positions to shift. It's a 3-bit value, meaning it can represent numbers from 0 to 7.
  output reg[7:0]out;

  always@(*)
    begin
      if(lr)
        out = In>>n;   //right shift
      else
        out = In<<n;   //left shift
    end
endmodule
