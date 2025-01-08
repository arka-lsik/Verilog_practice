//4x2 Priority encoder behavioral dsign
module 42_penc(I,v,y);
  input [3:0]I;
  output reg v;
  output reg[1:0]y;

  always@(*)
    begin
      if (I[3]) {v,y} = 3'b100;
      else if (I[2]) {v,y} = 3'b101;
      else if (I[1]) {v,y} = 3'b110;
      else if (I[0]) {v,y} = 3'b111;
      else {v,y} = 3'b000;
    end
endmodule
