//Code for 0101 sequence detector Mealy non overlapping
module seq_0101_nov(inp,clk,rst,det)
  input inp,clk,rst;
  output reg det;
  reg [1:0]pr_st,nxt_st;
  parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;

  always@(posedge clk)
    if(!rst)
      pr_st<=s0;
  else
    pr_st<=nxt_st;

  always@(inp.pr_st)
    case(pr_st)
      s0: if(inp)
        nxt_st=s0;
      else
        nxt_st=s1;
      s1: if(inp)
        nxt_st=s2;
      else
        nxt-st=s1;
      s2: if(inp)
        nxt_st=s0;
      else
        nxt_st=s3;
      s3: if(inp)
        nxt_st=s0;
      else
        nxt_st=s1;
      default: nxt_st=s0;
    endcase

  always@(inp,pr_st)
    case(pr_st)
      s0: det=0;
      s1: det=0;
      s2: det=0;
      s3: if(inp)
        det=1;
      else
        det=0;
    endcase
endmodule
 
