module priority_example;
  int a = 0, b = 1, c = 0;
  initial begin
    priority if (a)
      $display("a is true");
    else if (b)
      $display("b is true");
    else if (c)
      $display("c is true");
    // No 'else' — if all are false, simulator gives a warning
  end
endmodule
