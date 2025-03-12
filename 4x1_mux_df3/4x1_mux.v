// 4x1 mux dataflow model 3
// This is the case based 4x1 mux design
module 41_mux_df2(y,S,I);
  input [3:0]I;
  input [1:0]S;
  output y;

  assign y = (S==2'b00) ? I[0] : ((S==2'b01) ? I[1] : ((S==2'd10) ? I[2] : I[3] ));
endmodule
