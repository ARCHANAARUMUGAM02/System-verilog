module size_cast_example;
  int a = 32'h000000A5;     
  logic [7:0] small;        
  logic [15:0] medium;      
  logic [31:0] large;       

  initial begin
    small  = 8'(a);        
    medium = 16'(a);       
    large  = 32'(a);        

    $display("Original 32-bit a   = %0h", a);
    $display("After 8-bit cast    = %0h", small);
    $display("After 16-bit cast   = %0h", medium);
    $display("After 32-bit cast   = %0h", large);
  end
endmodule
