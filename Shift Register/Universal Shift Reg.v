// 4-bit Universal Shift Register
module universal_shift_register (
  input             clk,
  input             rst,          
  input       [1:0] sel,          
  input       [3:0] PI,         // Parallel data in
  input             SR,   // Serial input for right shift
  input             SL,    // Serial input for left shift
  output      [3:0] PO        // Parallel data out
);

  // The single internal register that holds the state
  reg [3:0] q;

  // The parallel output is always driven by the state of our register
  assign PO = q;

  always @(posedge clk) begin
    if (rst) begin
      
      q <= 4'b0;
    end
    else begin
      
      case (sel)
        2'b00:  q <= q;                         // Mode 00: Hold State (No change)
        2'b01:  q <= {SR, q[3:1]};      // Mode 01: Shift Right
        2'b10:  q <= {q[2:0], SL};       // Mode 10: Shift Left
        2'b11:  q <= PI;                      // Mode 11: Parallel Load
        default: q <= 4'b0;                     // Default to a safe state
      endcase
    end
  end

endmodule
