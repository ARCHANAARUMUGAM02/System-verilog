module dynamic_operations;
  int arr[];
  initial begin
    arr={1,3,4,5,6};
    $display(arr,arr.size());
    arr.reverse();
    $display(arr);
    arr.sort();
    $display(arr);
     arr.rsort();
    $display(arr);
             arr.shuffle();
    $display(arr);
             arr.delete();
    $display("size of an array",arr.size());
             end
             endmodule
