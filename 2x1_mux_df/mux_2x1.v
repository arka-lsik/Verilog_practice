//2x1 mux data flow model.
module mux_2x1_df(Y,I,S);
  input [1:0]I;
  input S;
  output Y;

  assign Y = S ? I[0] : I[1];
endmodule                 

//2x1 mux behavioral model
module mux_2x1_bh(Y,I,S)
       input [1:0]I;
       input S;
       output reg Y;

              always@(*)
                if(S)
                    Y = I[1];
                  else 
                    Y = I[0];
     endmodule
                          
