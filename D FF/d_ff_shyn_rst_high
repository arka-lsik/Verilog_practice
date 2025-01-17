//D ff shynchronus reset Active High
module (q,d,clk,rst)
  input d,clk,rst;
  output q;

  always@(posedge clk or posedge rst)
    if(rst)
      q<=1'b0;
    else
      q<=d;
endmodule
