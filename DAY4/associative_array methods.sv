module associative_array_methods;
  int assoc_array[int];
   int key;
  initial begin
   assoc_array [1]=5;
   assoc_array[3]=6;
    assoc_array[5]=4;
    assoc_array[7]=6;
    if(assoc_array.exists(5))
      $display("assoc_array [5] exists with the value of=%0d",assoc_array[5]);
    else 
      $display("assoc_array [5] does not exists ");
    $display("number of elements in an array=%0d",assoc_array.num());
   
    if(assoc_array.first(key))
       $display("first key=%0d,value=%0d",key,assoc_array[key]);
    if(assoc_array.last(key))
      $display("last key=%0d,value=%0d",key,assoc_array[key]);
    key=5;
    if(assoc_array.next(key))
      $display("next key=%0d,value=%0d",key,assoc_array[key]);
    if(assoc_array.prev(key))
      $display("next key=%0d,value=%0d",key,assoc_array[key]);
      
  end
  
endmodule
