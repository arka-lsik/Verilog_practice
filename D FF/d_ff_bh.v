module (d,q,clk);
  input clk,q;
  output d;

  always@(posedge clk)
    q<=d;
endmodule
