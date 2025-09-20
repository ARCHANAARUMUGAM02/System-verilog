module two_d_unpackedarray();
reg [7:0] my_array[2:0][3:0]; // 3 rows, 4 columns
initial begin
    my_array[0][0] = 1;
    my_array[0][1] = 2;
    my_array[1][0] = 3;
    my_array[2][3] = 12;

    $display("%0d", my_array[2][3]); // prints 12
end
endmodule
