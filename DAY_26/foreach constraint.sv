class sequential_item;
  rand int arr[5];
  
 
  constraint arr_even { foreach (arr[i]){
    arr[i]%2==0;}}

endclass
module seq_tb;
  sequential_item item;
  
  initial begin
    item=new();
    if(item.randomize())
    $display("array=%p",item.arr);
    else
      $display("randomization failed");
    
  
  end
endmodule
             
