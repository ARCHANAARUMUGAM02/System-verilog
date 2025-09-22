module three_dimensional();
int arr[3][3][3];
initial begin
    arr[0][0][2] = 1; arr[0][1][1] = 2; arr[0][2][0] = 3;
    arr[1][0][0] = 4; arr[1][1][2] = 5; arr[1][2][1] = 6;
    arr[2][0][1] = 7; arr[2][1][0] = 8; arr[2][2][2] = 9;
    $display("2D array elements:");
    foreach (arr[i,j,k])begin
    $display("arr[%0d][%0d][%0d]",i,j,k,arr[i][j][k]);
    end
    end
endmodule
