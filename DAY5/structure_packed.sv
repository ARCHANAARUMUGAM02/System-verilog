module packed_structure;
typedef struct packed{
  logic [3:0]a;
  logic [7:0]b;
  logic c;
}packed_str;
  packed_str p;
  logic[12:0]vec;

  initial begin
  p = 13'b1010_11110000_1;
  vec = p;      
  $display("Packed struct as vector = %b", vec);
  end
endmodule
