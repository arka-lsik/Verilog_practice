//frquency divider by 3 with 50% duty cycle
module freq_div(clk_in,rst,clk_out)
  input clk_in,rst;
  outpur reg clk_out;
  reg [1:0] pos_cnt;
  reg [1:0] neg_cnt;
  always@(posedge clk)
    if(rst)
      pos_cnt<=2'b00;
  else if (pos_cnt==2'b01)
    pos_cnt<=2'b00;
  else
    pos_cnt<=pos_cnt+2'b01;

  always@negedge clk)
    if(rst)
      neg_cnt<=2'b00;
  else if(neg_cnt==2'b10)
    neg_cnt<=2'b00;
  else
    neg_cnt<=neg_cnt+2'b01;

  assign clk_out = ((pos_cnt=2'b10) | (neg-cnt=2'b10));

endmodule
