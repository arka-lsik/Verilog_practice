// second data flow model for 4x1 mux, 
// Also it is the priority type of hardware immplementation of 4x1 mux
module 41_mux_df2(y,I,S)
  input [3:0] I;
  input [1:0] s;

  assign y = ~|S ? I[0] : ( &S ? I[3] : ( S[0] ? I[1] : I[2]));
endmodule
