module one_d_unpacked_array();
reg [7:0] my_array [3:0]; 
initial begin
my_array[0] = 8'hA1;
my_array[1] = 8'hB2;
my_array[2] = 8'hC3;
my_array[3] = 8'hD4;
$display("1D Array Elements:");
 $display("%h %h %h %h", my_array[0], my_array[1], my_array[2], my_array[3]);
    end
endmodule

