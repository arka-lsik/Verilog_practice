//Behavioral model 4 bit full Adder
module 4_fa_bh(a,b,cin,sum,cout);
  input [3:0]a,b;
  input cin;
  output reg [3:0]sum;
  output reg cout;

  always@(*)
      {sum,cout} = a+b+cin;
endmodule
