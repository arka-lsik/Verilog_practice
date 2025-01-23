//Design a 8 Bit counter with UP & DOWN in same design.
module (clk,rst,data,load,ud,count);
  input clk,rst,load,ud;
  input [7:0]data;
  output [7:0]count;
  reg [7:0]count_temp;

  always@(posedge clk or negedge rst)
    if(!rst)
      count_temp<=8'd0;
  else if(load)
      count_temp<=data;
  else if(ud)
      count_temp<=count_temp+1;
  else
      count_temp<=count_temp-1;

  assign count=count_temp;
endmodule
