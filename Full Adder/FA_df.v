//Data flow modeling of full Adder
module fa_df(a,b,cin,cout,sum);
  input a,b,cin;
  output cout,sum;

  assign sum = a^b^cin;
  assign cout = a&b | b&cin | a&cin;
endmodule
