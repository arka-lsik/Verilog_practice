//Behavrioul design of 4x2 encoder
module 42_enc(y,v,I);
  input [3:0]I;
  output reg[1:0]y;
  output reg v;

  always@(*)
    case(I)
      4'd1: {v,y} = 2'b00;
      4'd2: {v,y} = 2'b01;
      4'd4: {v,y} = 2'b10;
      4'd8: {v,y} = 2'b11;
      4'd0,4'd3,4'd5,4'd6,4'd7,4'd9,4'd10,4'd11,4'd12,4'd13,
      4'd14,4'd15: {v,y} = 2'b00;
      default $diplay("error");
    endcase
endmodule
