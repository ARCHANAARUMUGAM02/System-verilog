// or browse Examples
module static_casting;
  int i_r;
  real r_a;
  initial begin
    r_a=(2.1*3.2);
    i_r=int'(2.1*3.2);
    $display("value of i_r=%0f",i_r);
    $display("value of r_a=%0d",r_a);
  end
endmodule
             
