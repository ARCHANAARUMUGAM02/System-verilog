module increment_difference;
  int i, a, b;

  initial begin
    i = 5;
    a = i++;
    $display("Post-increment:");
    $display("a = %0d, i = %0d\n", a, i);

    i = 5;
    b = ++i;
    $display("Pre-increment:");
    $display("b = %0d, i = %0d\n", b, i);

    $display("For loop with i++:");
    for(i = 0; i < 3; i++)
      $display("  Iteration (i=%0d)", i);

    $display("\nFor loop with ++i:");
    for(i = 0; i < 3; ++i)
      $display("  Iteration (i=%0d)", i);
  end
endmodule
