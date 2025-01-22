//Design 8 bit up counter with load option (We can upload the new data also)
module up_count_ld(clk,rst,load,count,data);
  input clk,rst,load;
  input [7:0]data;
  output [7:0]count;
  reg [7:0]count_temp;

  always@(posedge clk or negedge rst)
    if(!rst)
      count_temp<=8'd0;
  else if(load)
      count_temp<=data;
  else
      count_temp<=count_temp+1;

  assign count = count_temp;
endmodule

  
