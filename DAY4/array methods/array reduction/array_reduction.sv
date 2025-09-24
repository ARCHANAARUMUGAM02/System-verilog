module array_reduction;
  int q[$]='{1,2,3,4,5};
  initial begin
    $display("1)",q.sum());
    $display("2)",q.product());
    $display("3)",q.and());
    $display("4)",q.or());
    $display("5)",q.xor());
    
  end
endmodule
