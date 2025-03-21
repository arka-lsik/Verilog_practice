//4x2 encoder dataflow model design with (V=valid bit)
module encoder_4x2_df(D,v,A);
  input [3:0]D;
  input v;
  output [1:0]A;

  assign A = { D[3]|D[1] , D[3]|D[2]};
  assign v = D[3] | D[2] | D[1] | D[0];
endmodule
