//Code for range counter form 10 to 40 for counting both up & down counter
module count_10_40_ud(clk,rst,ud,load,data,count)
  input clk,rst,load,ud;
  input [7:0]data;
  output [7:0]count;
  reg count_temp;

  always@(posedge clk)
    if(!rst or count_temp>8'd40 or count_temp<8'd10)
      count_temp<=8'd0;
  else if(load)
    count_temp<=data;
  else if(ud)
    count_temp<=( count_temp >= 8'd40 )? 8'd10: count_temp+1;
  else
    count_temp<= (count_temp <= 8'd10)? 8'd40 : count_temp-1;

  assign count = count_temp;

endmodule
