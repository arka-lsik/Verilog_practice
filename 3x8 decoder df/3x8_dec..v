//3x8 Decoder dataflow model design
module 38_dec(y,En,I);
  input [2:0]I;
  input En;
  output [7:0]y;

  assign y = { En & I[0] &I[1] & I[2] |
              En & I[0] &I[1] &~I[2] |
              En & I[0] &~I[1] &I[2] |
              En & I[0] &~I[1] &~I[2] |
              En & ~I[0] &I[1] &I[2] |
              En & ~I[0] &I[1] &~I[2] |
              En & ~I[0] &~I[1] & I[2] |
              En & ~I[0] &~I[1] &~I[2] }
endmodule
    
