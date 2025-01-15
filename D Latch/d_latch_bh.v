module d_latch_bh(q,en,d);
  input d,en;
  output q;

  always@(d,en)
    if(en)
      q = d;
endmodule
