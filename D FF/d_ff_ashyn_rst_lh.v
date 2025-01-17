//D FF Ashynchronus +ve edge triggered Active Low or Active High reset
//Usally this is a reset priority structure
module d_ff_ashyn_rst_lh(q,d,clk,rst,set);
  input d,clk,rst,set;
  output q;

  always@(posedge clk or negedge rst or posedge set)
    if(!rst)
      q<=1'b0;
  else if(set)
      q<=1'b1;
  else
      q<=d;
endmodule
