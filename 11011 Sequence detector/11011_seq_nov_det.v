//Code for Non overlapping 11011 sequence detector
module seq_11011_nov(inp,clk,rst,det);
  input inp,clk,rst;
  output reg det;
  reg [2:0]pr_st,nxt_st;
  parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;

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
        nxt_st=s2;
      else
        nxtst=s0;
      s2: if(inp)
        nxt_st=s2;
      else
        nxt_st=s3;
      s3: if(inp)
        nxt_st=s4;
      else
        nxt_st=s0;
      s4: if(inp)
        nxt_st=s0;
      else
        nxt_st=s0;
      default: nxt_st=s0;
    endcase

  always@(pr_st,inp)
    case(pr_st)
      s0: det=0;
      s1: det=0;
      s2: det=0;
      s3: det=0;
      s4: if(inp)
        det=1;
      else
        det=0;
    endcase
endmodule
        
