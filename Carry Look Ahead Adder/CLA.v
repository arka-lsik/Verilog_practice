module (a,b,cin,sum,cout);
  input [3:0]a,b;
  input cin;
  output [3:0]sum;
  output cout;

  wire [2:0]ci;

  assign sum = a^b^cin;
  //c0 = g0+p0.cin
  assign c[0] = (A[0]&B[0]) | (A[0]^B[0]).cin;
  //c1 = g1+p1.c0 = g1+p1.(g0+p0.cin)
  assign c[1] = (A[1]&B[1]) | (A[1]^B[1]).((A[0]&B[0]) | (A[0]^B[0]).cin);
  //c2 = g2 + p2.c1 = g2 + p2(g1+p1.(g0+p0.cin))
  assign c[2] = (A[2]&B[2]) | (A[2]^B[2]).((A[1]&B[1]) | (A[1]^B[1]).((A[0]&B[0]) | (A[0]^B[0]).cin));
  //cout = g3+p3.c2 = g3+p3.(g2 + p2(g1+p1.(g0+p0.cin)))
  assign cout = (A[3]&B[3]) | (A[3]^B[3]).((A[2]&B[2]) | (A[2]^B[2]).((A[1]&B[1]) | (A[1]^B[1]).((A[0]&B[0]) | (A[0]^B[0]).cin)));
endmodule
  
