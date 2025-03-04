//Code is for the FIFO writing and reading in Dual clock phase

module fifo_single_clk(clk_w,clk_r,rst,buf_in,buf_out,fifo_count,wr_en,r_en,buf_empty,buf_full);
  input clk_w,clk_r,rst,wr_en,rd_en;
  input [7:0]buf_in;
  output reg[7:0] buf_out;
  output reg buf_empty,buf_full;
  output reg[5:0] fifo_count;
  reg [5:0] wr_ptr,rd_ptr;
  reg [7:0] fif0_mem[63:0];

  //Checking status flag
  always@(fifo_count)
    begin
      buf_empty = (fifo_count==0);
      but_full = (fifo_count==64);
    end

  //Set the fifo counter block separetly for write clovk & read clock
  always@(posedge clk_w or negedge rst)
    begin
      if(rst)
        fifo_count<=0;
              else if(!buf_full && wr_en)
                fifo_count<=fifo_count+1;
    end
  always@(posedge clk_r or negedge rst)
    begin
      if(rst)
        fifo_count<=0;
              else if(!buf_empty && r_en)
                fifo_count<=fifo_count-1;
              else
                fifo_count<=fifo_count;  //again otherwise hold the value
              end

     //Fetching the data from fifo
  always@(posedge clk_r or negedge rst)
                begin
                  if(rst)
                    buf_out<=0;
                  else begin
                    if(!buf_empty && r_en)
                      buf_out<=buf_mem[rd_ptr];
                    else
                      buf_out<=buf_out;
                  end
                end

    //Writing the data to fifo
  always@(posedge clk_w or negedge rst)
                begin
                  if(rst)
                    buf_mem[wr_ptr]<=0;
                  else begin
                    if(!buf_ful && wr_en)
                       buf_mem[wr_ptr]<=buf_in;
                    else
                      buf_mem[wr_ptr]<=buf_mem[wr_ptr];
                  end
                end

        // Managing the pointer for differently for write & read clock
  always@(posedge clk_w or negedge rst)
                begin
                  if(rst) begin
                    wr_ptr<=0;
                  end
                  else begin
                    if(!buf_ful && wr_en)
                      wr_ptr<=wr_ptr+1;
                    else
                      wr_ptr<=wr_ptr;
                  end
                end
  always@(posedge clk_r or negedge rst)
    begin
      if(rst) begin
        r_ptr<=0;
      end
                  else  begin
                    if(!buf_empty && r_en)
                      r_ptr<=r_ptr-1;
                    else
                      r_ptr<=r_ptr;
                  end
                end

  endmodule
