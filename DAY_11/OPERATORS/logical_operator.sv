module logical_operator;
 logic  [0:7] a,b,x,y,z;
  initial begin
    a=4'b0010;
    b=4'b1010;
    $display("\n \t The value of a is %0b",a);
$display("\n \t The value of b is %0b",b);
 x=a||b;
    $display("\n the  value of logical or_op:%0b",x);
    y=a&&b;
    $display("\n the  value of logical and_op:%0b",y);
    z=!b;
    $display("\n the  value of logical negation_op:%0b",z);
  end
endmodule
