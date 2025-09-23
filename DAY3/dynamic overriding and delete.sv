module dynamic_delete;
  int array[];
  initial begin
    array='{1,1,1};
    $display("initialized size of an array=%d",array.size());
    array=new[5](array);
    $display(" size of an array=%d",array.size());
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
    array.delete();
    $display(" size of an array=%d",array.size());
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
  end
    endmodule
