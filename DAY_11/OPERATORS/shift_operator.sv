module shift_code;
logic [3:0] a, c, y;
reg signed [3:0] b;

initial begin
   a = 4'b1011;
   b = 4'b1100;

   $display("\n \t the value of a is %0b", a);
   $display("\n \t the signed value of b is %0b", b);

   $display("\n \t the logical left shift (a << 2) output is %0b", a << 2);
   $display("\n \t the logical right shift (b >> 2) output is %0b", b >> 2);
   $display("\n \t the arithmetic left shift (a <<< 1) output is %0b", a <<< 1);
   $display("\n \t the arithmetic right shift (b >>> 3) output is %0b", b >>> 3);
end
endmodule
