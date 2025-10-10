module foreach_example;
  int arr[5]='{2,3,4,5,6};
  initial begin
    foreach(arr[i])
      $display("array elements=%0d",i,arr[i]);
  end
endmodule
