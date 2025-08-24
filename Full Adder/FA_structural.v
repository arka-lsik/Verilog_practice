//Structural modeling of 1bit full adder
module fa_st(a,b,cin,cout,sum);
  input a,b,cin;
  output cout,sum;
  wire w1,w2,w3;

  xor G1(w1,a,b);
  xor G2(sum,w1,cin);
  and G3(w2,a,b);
  and G4(w3,w1,cin);
  xor G5(cout,w3,w2);
endmodule
