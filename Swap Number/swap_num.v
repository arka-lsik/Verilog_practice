module swap_num_temp(a,b,temp);
  input a,b;
  reg temp;

  always@(posedge clk)
    begin
      temp = b;
      a = b;
      b = temp;
    end
endmodule

module swap_num(a,b);
  input a,b;

  always@(posedge clk)
    begin
      a<=b;
      b<=a;
    end
endmodule

  
  
