module unique_case_example;
  logic [1:0] sel;
  logic y;

  initial begin
    sel = 2'b11;
    unique case (sel)
      2'b00: y = 0;
      2'b01: y = 1;
      2'b10: y = 0;
      // Missing 2'b11 — gives warning at runtime!
    endcase
  end
endmodule
