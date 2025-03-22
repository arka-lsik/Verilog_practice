//4x2 Priority encoder behavioral dsign
module p_enco_4x2(I,v,y);
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

//Truth Table then you understand (JUST FOLLOW THIS TABLE)
// I0 I1 I2 I3 | Y1 Y0 V
// 0  0  0  0  | 0  0  0
// 1  0  0  0  | 0  0  1
// X  1  0  0  | 0  1  1
// X  X  1  0  | 1  0  1
// X  X  X  1  | 1  1  1

