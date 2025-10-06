module data_type_shortint;  
 shortint shortint_data;
initial begin
  $display("\n//shortint is 16-bit signed ");
  $display("\nBefore initialization Default value of shortint = %0b",shortint_data);
  shortint_data = 16'b1101001010101001;
  $display("\nAfter initialization value of shortint = %0b", shortint_data);
  shortint_data = 32767; 
  $display("\nAfter initialization maximum value of shortint = %0b\n", shortint_data);
end
endmodule
