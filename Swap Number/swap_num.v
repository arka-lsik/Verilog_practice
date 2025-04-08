module swap_num_temp(a,b,temp,clk);
  input a,b,clk;
  reg temp;

  always@(posedge clk)
    begin
      temp = b;
      a = b;
      b = temp;
    end
endmodule

module swap_num(a,b,clk);
  input a,b,clk;

  always@(posedge clk)
    begin
      a<=b;
      b<=a;
    end
endmodule

  
  
