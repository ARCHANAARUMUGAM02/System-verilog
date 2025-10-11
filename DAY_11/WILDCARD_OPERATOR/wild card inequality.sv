module wildcard_inequality;
  logic [3:0] a = 4'b1010;

  initial begin
    if (a !=? 4'b10x0)
      $display("Not matching the pattern 10x0");
    else
      $display("Matches pattern 10x0");
  end
endmodule
