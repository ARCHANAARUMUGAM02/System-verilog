module data_type_int;  
int int_data; 
initial begin
$display("\n//int is 32-bit signed");
$display("\nBefore initialization Default value of int = %0b",int_data);
int_data = 32'b110100101010; 
$display("\nAfter initialization value of int = %0b", int_data);
int_data = 2147483647; 
$display("\nAfter initialization maximum value of int = %0b\n", int_data);
end
endmodule
