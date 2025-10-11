module arithmetic_op;
  int a = 10, b = 3;
  initial begin
    $display("a+b = %0d", a+b);
    $display("a-b = %0d", a-b);
    $display("a*b = %0d", a*b);
    $display("a/b = %0d", a/b);
    $display("a%%b = %0d", a%b);
  end
endmodule
