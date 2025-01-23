//Design of 8 bit MOD 46 UP counter
  module (clk,rst,count,data,load,)
  input clk,rst,load;
  input [7:0]data;
  output [7:0]count;
  reg [7:0]count_temp;

  always@(posedge clk or negedge rst)
    if(!rst or count_temp>=8'd46)
      count_temp<=8'd0;
  else if(load)
    count_temp<=data;
  else
    count_temp<=count_temp+1;

  assign count = count_temp;
endmodule
