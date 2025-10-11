module bitwise_operator;
  bit [3:0] a = 4'b1010, b = 4'b1100;
  initial begin
    $display("a & b = %b", a & b);
    $display("a | b = %b", a | b);
    $display("a ^ b = %b", a ^ b);
    $display("~a    = %b", ~a);
  end
endmodule
