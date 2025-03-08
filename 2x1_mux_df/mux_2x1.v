//2x1 mux data flow model.
module mux_2x1_df(y,I,S);
  input [1:0]I;
  input S;
  output y;

  assign y = s ? I[0] : I[1];
endmodule                 

//2x1 mux behavioral model
    module mux_2x1_bh(y,I,S)
       input [1:0]I;
       input s;
       output reg y;

              always@(*)
                  if(s)
                    y = I[1];
                  else 
                    y = I[0];
     endmodule
                          
