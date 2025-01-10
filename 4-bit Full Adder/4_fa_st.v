//Structural modeling of 4 bit full adder
module 4_fa_st(a,b,cin,cout,sum);
  input [3:0]a,b;
  input cin;
  output [3:0]sum;
  output cout;
  wire t1,t2,t3;

  full_adder FA0(sum[0],t1,a[0],b[0],cin);
  full_adder FA0(sum[1],t2,a[1],b[1],t1);
  full_adder FA0(sum[2],t3,a[2],b[2],t2);
  full_adder FA0(sum[3],t1,a[3],b[3],t3);
endmodule

//Also write the 1 bit fulladder module.
