module two_dimensional_array();
int arr[3][3];
initial begin
    arr[0][0] = 1; arr[0][1] = 2; arr[0][2] = 3;
    arr[1][0] = 4; arr[1][1] = 5; arr[1][2] = 6;
    arr[2][0] = 7; arr[2][1] = 8; arr[2][2] = 9;
    $display("2D array elements:");
    foreach (arr[i,j])begin
    $display("arr[%0d][%0d]",i,j,arr[i][j]);
    end
    end
endmodule
