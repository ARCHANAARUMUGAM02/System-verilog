module sign_cast_example;
  bit [3:0] a = 4'b1111;      
  int signed_value;
  int unsigned_value;

  initial begin
    signed_value   = signed'(a);     
    unsigned_value = unsigned'(a);  

    $display("Original a = %0b", a);
    $display("After signed cast   = %0d", signed_value);
    $display("After unsigned cast = %0d", unsigned_value);
  end
endmodule
