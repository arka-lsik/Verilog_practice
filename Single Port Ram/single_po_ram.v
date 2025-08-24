module single_port_ram(data, q, clk, we, wr_addr, rd_addr);
  input [7:0]q;
  input we,clk;
  output reg[7:0] q;
  reg [7:0]ram[63:0];  //acctual ram storage 64x8
  input [5:0] wr_addr,rd_addr;  //because of the 64 location or blocks in ram so 6 bit is enough to read or write

  always@(posedge clk)
    begin
    if(we)
      ram[wr_addr]<=data;
  else
    q<=ram[rd_addr];
    end

endmodule
  
  
