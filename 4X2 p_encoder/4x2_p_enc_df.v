//4x2 priority encoder data flow model
module 42_penc_df(I,v,y);
  input [3:0]I;
  output [1:0]y;
  output v;

  assign {v,y} = I[0] ? 3'b100 : ( I[1] ? 3'b101 : ( I[2] ? 3'b110 : ( I[3] ?3'b111 : 3'b000)));
endmodule
