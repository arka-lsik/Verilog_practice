module seq_ov_moore_0101(inp,clk,rst,det);
  input clk,rst,inp;
  output det;
  reg [1:0] pr_st, nxt_st;
  parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;

  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        pr_st<=2'b0;
      else
        pr_st<=nxt_st;
    end

  always@(pr_st,inp)
    begin
      case(pr_st)
        s0: if(inp)
          nxt_st=s0;
        else
          nxt_st=s1;
        s1: if(inp)
          nxt_st=s2;
        else
          nxt_st=s1;
        s2: if(inp)
          nxt_st=s0;
        else
          nxt_st=s3;
        s3: if(inp)
          nxt_st=s4;
        else
          nxt_st=s1;
        s4: if(inp)
          nxt_st=s0;
        else
          nxt_st=s3;
        default: nxt_st=s0;
      endcase
    end

  always@(pr_st)
    begin
      case(pr_st)
    s0: det=0;
    s1: det=0;
    s2: det=0;
    s3: det=0;
    s4: det=1;
  default: det=0;
      endcase
  end

endmodule
