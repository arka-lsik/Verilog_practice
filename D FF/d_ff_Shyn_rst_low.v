//D FF Shynchronus reset Active Low
//only work for priority in when clock will active
module (q,d,clk,rst);
  input d,clk,rst;
  output q;

  always@(posedge clk or negedge rst)
    if(!rst)
      q<=1'b0;
    else 
      q<=d;
endmodule
