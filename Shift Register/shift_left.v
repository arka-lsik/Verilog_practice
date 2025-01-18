//5 bit left shift register
module shift_lh(SI,SR,clk,rst,so);
  input SI,clk,rst;
  output so;
  output reg[4:0]sr;

  always@(posedge clk or negedge rst)
    if(!rst)
      begin
        so<=5'b0; //to reset all FF
        sr<=1'b0; //to reset 0th FF
      end
  else 
    begin
    sr[0]<=so;
    sr[1]<=sr[0];
    sr[2]<=sr[1];
    sr[3]<=sr[2];
    sr[4]<=sr[3];
    so<=sr[4];
    end
endmodule
  
