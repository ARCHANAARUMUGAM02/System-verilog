module packed_union_easy;

  typedef union packed {
    logic [15:0] full;
    struct packed {
      logic [7:0] lower;
      logic [7:0] upper;
    } parts;
  } word16_u;

  word16_u u;

  initial begin
    $display("Simple Packed Union Example");

    u.full = 16'hABCD;

    $display("full  = %h", u.full);      
    $display("lower = %h", u.parts.lower); 
    $display("upper = %h", u.parts.upper); 
  end

endmodule
