//000 non overlapping Mealy machine sequence detector
module seq_nov_000(inp,clk,rst,det);
  input clk,rst,inp;
  output reg det;
  reg [1:0]pr_st,nxt_st;
  parameter s0=2'b00,s1=2'b01,s2=2'b10;

  always@(posedge clk)
       if(!rst)
         pr_st<=s0;
       else
         pr_st<=nxt_st;

  always@(inp,pr_st)
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
        nxt_st=s0;
      default: nxt_st=s0;
    endcase

  always@(inp,pr_st)
    case(pr_st)
      s0: det=0;
      s1: set=0;
      s2: if(inp)
          det=0;
      else
         det=1;
    endcase

endmodule
    
      

  
  
