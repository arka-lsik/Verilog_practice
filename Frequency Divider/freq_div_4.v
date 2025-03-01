//frequency divider by 4
module freq_div_4(clk_out,clk,rst);
  input clk,rst;
  output reg clk_out;
  reg clk_div2;

  always@(posedge clk or negedge rst)
    begin
      if(rst)
        clk_div2<=1'b0;
      else
        clk_div2<=~clk_div2;
    end
  always@(posedge clk_div2 or negedge rst)
    begin
      if(rst)
        clk_out<=1'b0;
      else
        clk_out<=~clk_out;
    end
endmodule
