module relational_op;
  int a = 5, b = 10;
  initial begin
    $display("a<b = %0d", a<b);
    $display("a>b = %0d", a>b);
    $display("a<=b = %0d", a<=b);
    $display("a>=b = %0d", a>=b);
  end
endmodule
