module string_example;
  string s1, s2;
  int len;
  byte c;  // temporary variable for single characters

  initial begin
    // Assign string
    s1 = "Hello";
    $display("s1 = %s", s1);

    // Concatenate strings
    s2 = {s1, " SystemVerilog!"};  // safer using {} concat
    $display("s2 = %s", s2);

    // Length
    len = s2.len();
    $display("Length of s2 = %0d", len);

    // Indexing → use temporary byte
    c = s2.getc(0);
    $display("First char of s2 = %c", c);

    c = s2.getc(4);
    $display("5th char of s2 = %c", c);

    // Replace a character → use a byte literal
    s2.putc(0, byte'("h"));
    $display("s2 after modification = %s", s2);

    // Substring
    $display("Substring (0 to 4) = %s", s2.substr(0, 4));
  end
endmodule

