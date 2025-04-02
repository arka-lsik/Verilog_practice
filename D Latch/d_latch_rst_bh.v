//D latch behavioral model with Ashynchronus resst 
module d_latch_rst_bh(q,d,en,rst);
  input d,en,rst;
  output reg q;

  always@(d,en,rst)
    if(rst)
      q = 1'b0;
  else if(en)
    q =  d;
endmodule
