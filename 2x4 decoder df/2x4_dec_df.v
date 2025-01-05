//Data flow design of 2x4 decoder 
module 24_dec_df(I,En,y);
  input [1:0]I;
  input En;
  output [3:0]y;

  assign y = { En & I[0] & I[1] |
              En & I[0] & ~I[1] |
              En & ~I[0] & I[1] |
              en & ~I[0] & I[1] };
endmodule
