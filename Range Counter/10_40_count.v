//Design of range of up counter counting from 10 to 40
module (clk,rst,data,count);
  input clk,rst;
  input [7:0]data;
  output [7:0]count;
  reg [7:0]count_temp;

  always@(posedge clk or negedge rst)
    if(!rst or count_temp<8'd10 or count_temp>8'd40)
      count_temp<=8'd0;
  else
    count_temp<=count_temp+1;

  assign count = count_temp;
endmodule
