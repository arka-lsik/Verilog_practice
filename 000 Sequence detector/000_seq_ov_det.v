//000 Overlapping sequence detecter Mealy
module seq_000_ov(inp,det,clk,rst);
  input clk,rst,inp;
  output reg det;
  reg [1:0]pr_st,nxt_st;
  parameter s0=2'b00,s1=2'b01,s2=2'b10;

  always@(posedge clk)
    if(rst)
      pr_st<=s0;
  else
    pr_st<=nxt_st;

  always@(pr_st,inp)
    case(pr_st)
      s0: if(inp)
        nxt_st=s0;
      else
        nxt_st=s1;
      s1: if(inp)
        nxt_st=s0;
      else
        nxt_st=s2;
      s2: if(inp)
        nxt_st=s0;
      else
        nxt_st=s2;
      default: nxt_st=s0;
    endcase

  always@(inp,pr_st)
    case(pr_st)
      s0: det=0;
      s1: det=0;
      s2: if(inp)
        det=0;
      else
        det=0;
    endcase
endmodule

  
