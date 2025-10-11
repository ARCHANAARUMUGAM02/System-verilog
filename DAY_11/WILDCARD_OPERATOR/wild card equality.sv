module wildcard_example;
  logic [3:0] data;

  initial begin
    data = 4'b1010;
    if (data ==? 4'b10x0)
      $display("Match found: data = %b matches pattern 10x0", data);
    else
      $display("No match");
    if (data ==? 4'b111x)
      $display("Match found: data = %b matches pattern 111x", data);
    else
      $display("No match for pattern 111x");
  end
endmodule
