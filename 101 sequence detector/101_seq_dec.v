//Mealy Machine
//101 Non overlapping sequence detector. 
module  seq_dec_101(inp,clk,rst,det);
  input inp,clk,rst;
  output reg det;
  output reg [1:0]pr_st,nxt_st;
  parameter s0=2'b00,s1=2'b01,s2=2'b10;

  //always block for present state logic.
  always@(posedge clk or negedge rst)
    if(!rst)
      pr_st<=2'b0;
  else
    pr_st<=nxt_st;

  //always block for state of input side combinational logic
  always@(inp,pr_st)
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
        nxt_st = s0;
      else
        nxt_st = s0;
      default: nxt_st=s0;
    endcase

  //always block for detection part logic
  always@(inp,pr_st)
    case(pr_st)
      s0: det = 0;
      s1: det = 0;
      s2: if(inp)
        det = 1;
      else
        det =0;
      default: det = 0;
    endcase
endmodule
  
