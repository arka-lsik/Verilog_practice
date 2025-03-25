//Structural modeling of 4 bit full adder
module full_adder(a,b,cin,cout,sum);
  input a,b,cin;
  output cout,sum;
  wire w1,w2,w3;

  xor G1(w1,a,b);
  xor G2(sum,w1,cin);
  and G3(w2,a,b);
  and G4(w3,w1,cin);
  xor(cout,w3,w2);
endmodule

module fa_st_4(a,b,cin,cout,sum);
  input [3:0]a,b;
  input cin;
  output [3:0]sum;
  output cout;
  wire t1,t2,t3;

  full_adder FA0(sum[0],t1,a[0],b[0],cin);
  full_adder FA1(sum[1],t2,a[1],b[1],t1);
  full_adder FA2(sum[2],t3,a[2],b[2],t2);
  full_adder FA3(sum[3],t1,a[3],b[3],t3);
endmodule
