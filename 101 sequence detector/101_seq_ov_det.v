//sequence detection of 101 overlapping mealy machine
module seq_101_ov(inp,det,clk,rst);
  input inp,clk,rst;
  output reg det;
  reg [1:0]pr_st,nxt_st;
  parameter s0=2'b00,s1=2'b01,s2=2'b10;

  always@(posedge clk)
    if(rst)
      pr_st<=s0;
  else
    pr_st<=nxt_st;

  always@(*)
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
        nxt_st=s1;
      else
        nxt_st=s0;
      default: nxt_st=s0;
    endcase

  always@(*)
    case(pr_st)
      s0: det=0;
      s1: det=0;
      s2: if(pr_st==s2 && inp)
        det=1;
      else
        det=0;
    endcase
endmodule

        
    
