module structurepacked;
  struct packed {
    integer a;       // 32 bits
    bit [7:0] b;     // 8 bits
    byte c;          // 8 bits (signed)
    int d;           // 32 bits
    logic [7:0] e;   // 8 bits
    logic [7:0] f;   // 8 bits
  } str;

  initial begin
    str = 96'hffffffffffffffffffffff;  // assign 96 bits
    $display("%p", str);
  end
endmodule
