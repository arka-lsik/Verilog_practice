//5 bit right shift register
module shift_ri(SI,SO,SR,clk,rst);
  input SI,clk,rst;
  output [4:0]SR;
  output SO;

  always@(posedge clk or negedge rst)
    if(!rst)
      begin
        SO<=5'b0;
        SO<=1'b0;
      end
  else
    begin
      SR[4]<=SI;
      SR[3]<=SR[4];
      SR[2]<=SR[3];
      SR[1]<=SR[2];
      SR[0]<=SR[1];
      SO<=SR[0];
    end
endmodule
 
    
