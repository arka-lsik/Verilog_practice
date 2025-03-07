//Code for to write Fibonacci series in verilog
module fib_num(clk,rst,fib_out);
  input clk,rst;
  output reg[31:0] fib_out;
  reg [31:0]num1,num2;

  always@(posedge rst)
    begin
      num1<=32'd0;
      num2<=32'd1;
    end

  always@(posedge clk)
    begin
      if(!rst) begin
      reg [31:0]sum;
      sum=num1+num2;
      num1<=num2;
      num2<=sum;
      end
      else
        begin
          num1<=32'd0;
          num2<=32'd1;
        end
    end

  assign fib_out=sum;
endmodule
      
      
