module (d,q,clk);
  input clk,d;
  output q;

  always@(posedge clk)
    q<=d;
endmodule
