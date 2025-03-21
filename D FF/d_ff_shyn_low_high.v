//D ff Shynchronus reset Active High & Low reset
module (q,d,clk,rst)
  input d,clk,rst;
  output q;

  always@(posedge clk or negedge rst or negedge rst)
    if(!rst)
      q<=1'b0;
  else if(rst)
      q<=1'b1;;
  else 
      q<=d;
endmodule
