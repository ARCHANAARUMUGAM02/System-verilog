module forever_example;
  int i = 0;
initial begin
    forever begin
      $display("i = %0d", i);
      i++;
      #10;   // delay 10 time units
    end
  end
endmodule
