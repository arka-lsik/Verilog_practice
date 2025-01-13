//$ bit comparator dataflow model2
module (A,B,eq,ls,gt);
  input [3:0]A,B;
  output eq,ls,gt;

  assign eq = (A==B) ? 1 : 0;
  assign gt = (A>B) ? 1 : 0;
  assign ls = (A<B) ? 1 : 0;
endmodule
