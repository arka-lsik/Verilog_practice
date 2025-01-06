//2x4 decoder behavrioral desin
module 24_dec(y,I,En);
  input [1:0]I;
  input En;
  output reg [3:0]y;

  always@(*)
    begin
      case({En,I})
        3'b100: y=4'b0001;
        3'b101: y=4'b0010;
        3'b110: y=4'b0100;
        3'b111: y=4'b1000;

        3'b000: y=4'b1000;
        3'b001: y=4'b0100;
        3'b010: y=4'b0010;
        3'b011: y=4'b0001;
      endcase
    end
endmodule
