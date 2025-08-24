//4 bit full adder data flow model
module 4b_fa_df(a,b,cin,sum,cout);
  input [3:0]a,b;
  input cin;
  output [3:0]sum;
  output cout;

  assign {sum.cout} = a+b+cin; //use concatination operator to do sum & cout together
endmodule
