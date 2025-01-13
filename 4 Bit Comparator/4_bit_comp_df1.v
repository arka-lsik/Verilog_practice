//4 Bit comparator dataflow model1
module (A,B,eq,gt,ls);
  input [3:0]A,B;
  output eq,gt,ls;

  assign eq = (A~^B);
  assign gt = (A[3]&~B[3]) |
    ((A[3]~^B[3]) & (A[2]&~B[2])) | 
    ((A[3]~^B[3]) & (A[2]~^B[2]) & (A[1]&~B[1]) |
     ((A[3]~^B[3]) & (A[2]~^B[2]) & (A[1]~^B[1]) & (A[0]&~B[0]));

     assign ls = ~(gt|eq);
endmodule
     
