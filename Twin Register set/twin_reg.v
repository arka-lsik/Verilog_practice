//8 bit Twin register
module (q1,q2,d1,d2,clk,rst);
  input [7:0]d1,d2;
  input clk,rst;
  output [7:0]q1,q2;

  always@(posedge clk or negedge rst)
    if(!rst)
      begin
        q1<=1'b0;
        q2<=1'b0;
      end
  else
    begin
      q1<=d1;
      q2<=d2;
    end
endmodule
    
