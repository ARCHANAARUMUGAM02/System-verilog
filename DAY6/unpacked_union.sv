module union_example1;
  typedef union {
    int    i;     // 32 bits
    real   r;     // 64 bits (largest -> union size = 64 bits)
    byte   b;     // 8 bits
  } data_u;
   data_u u1;
initial begin
    $display("Unpacked Union Example");
    u1.i = 32'h12345678;
    $display("After writing int: i = %0h, b = %0d, r = %f", u1.i, u1.b,u1.r);
    u1.b = 8'hAA;
    $display("After writing byte: i = %0h, b = %0d, r = %f", u1.i,u1.b,u1.r);
    u1.r = 3.14;
  $display("After writing real: i = %0h, b = %0d, r = %f", u1.i, u1.b, u1.r);
   end
endmodule
