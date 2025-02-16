//Code for 101 Moor machine non overlapping sequence detector
module seq_det_101(inp,det,clk,rst);
  input clk,rst,inp;
  output reg det;
  reg pr_st, nxt_st;
  parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;

  always@(posedge clk)
    if(rst)
      pr_st<=s0;
  else
    pr_st<=nxt_st;

  always@(pr_st,inp)
    case(pr_st)
      s0: if(inp)
        nxt_st=s1;
      else
        nxt_st=s0;
      s1: if(inp)
        nxt_st=s1;
      else
        nxt_st=s2;
      s2: if(inp)
        nxt_st=s3;
      else
        nxt_st=s0;
      s3: if(inp)
        nxt_st=s1;
      else
        nxt_st=s0;
      default: nxt_st=s0;
    endcase

  always@(pr_st)
    case(pr_st)
      s0: det=0;
      s1: det=0;
      s2: det=0;
      s3: det=1;
      default: det=0;
    endcase
endmodule
