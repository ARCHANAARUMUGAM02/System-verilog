module conditional_code;

  int c, d;
  string y;
  string a, b;

  initial begin
    a = "true";
    b = "false";
    c = 4'b1001;
    d = 4'b0011;

    $display("\n\tValue of c = %0b", c);
    $display("\tValue of d = %0b", d);

    y = (c > d) ? a : b;

    $display("\n\tConditional output = %s", y);

    if (c > d)
      $display("\tBecause c is greater than d");
    else
      $display("\tBecause c is less than or equal to d");
  end
endmodule
