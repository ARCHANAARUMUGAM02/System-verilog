module task1();
  int multiplicand = 5;
  int multiplicator = 6;
  int result;

  initial begin
    $display("\t ----output of global task----");
    mul(multiplicand, multiplicator, result);
    $display("\t @ %0t ns , %0d X %0d = %0d", $time, multiplicand, multiplicator, result);
  end
endmodule

module task2();
  int r;
  initial begin
    #2;
    mul(7, 8, r);
    $display("\t @ %0t ns , 7 X 8 = %0d", $time, r);
  end
endmodule
