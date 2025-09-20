module three_d_unpacked_array();
reg [7:0] my_array[1:0][2:0][3:0]; 
initial begin
    my_array[0][0][0] = 5;  
    my_array[1][2][3] = 10;  
    $display("%0d", my_array[1][2][3]); // prints 10
end
endmodule
