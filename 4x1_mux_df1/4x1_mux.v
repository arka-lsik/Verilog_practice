// code for first data flow model for 4x1 mux
module 4_1_mux_df1(y,I,S)
  input [3:0] I;
  input [1:0] S;
  output y;

  assign y = S[I];
endmodule
