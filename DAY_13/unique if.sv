module unique_example;
  int a = 1, b = 1;
  initial begin
    unique if (a)
      $display("a is true");
    else if (b)
      $display("b is true");
    else
      $display("none true");
  end
endmodule
