//Design 8 bit UP counter
module up_count(count,clk,rst);
  input clk,rst;
  reg[7:0]count_temp;
  output [7:0]count;

  always@(posedge clk or negedge rst)
    if(!rst)
      count_temp = 8'd0;
    else
      count_temp = count_temp+1;

  assign count = count_temp;
endmodule
