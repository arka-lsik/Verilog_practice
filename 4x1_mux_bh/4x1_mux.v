//4x1 mux code fo behavriol design
module 41_mux_bh(y,S,I)
  input [3:0]I;
  input [1:0]S;
  output reg y;

  always@(*)
    case(s)
      2'd0: y=I[0];
      2'd1: y=I[1];
      2'd2: y=I[2];
      2'd3: y=I[3];
      default: $display("error");
    endcase
endmodule
