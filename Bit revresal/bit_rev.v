module rev_bit(clk,in,out);
  input wire clk;
  parameter N=8;
  input wire [N-1:0]in;
  output wire [N-1:0]out;

  integer i;
  always@(posedge clk)
    begin
     for(i=0;i<N;i++)
       begin
        out[i]<=in[N-1-i];
       end
    end
endmodule
      
  
  
