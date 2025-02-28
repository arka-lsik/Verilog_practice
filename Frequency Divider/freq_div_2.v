//code for frquency dividre by 2 with 50% duty cycle 
module freq_div_2(clk_in,clk_out,rst);
  input clk_in,rst;
  output reg clk_out;

  always@(posedge clk_in or negedge rst) begin
    if(rst)
      clk_out<=1'b0;
  else
    clk_out<=~clk_in;
  end

endmodule
    
