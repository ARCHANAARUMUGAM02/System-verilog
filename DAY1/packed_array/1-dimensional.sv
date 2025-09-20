module oned_packed_array();
logic [3:0] packed_arr [7:0];
int i;
initial begin
        packed_arr[0] = 4'd1;
        packed_arr[1] = 4'd2;
        packed_arr[2] = 4'd3;
        packed_arr[3] = 4'd4;
        packed_arr[4] = 4'd5;
        packed_arr[5] = 4'd6;
        packed_arr[6] = 4'd7;
        packed_arr[7] = 4'd8;
$display("Packed Array Elements:");
for(i = 0; i < 8; i=i+1)
$display("Element %0d = %0d", i, packed_arr[i]);
end
endmodule
