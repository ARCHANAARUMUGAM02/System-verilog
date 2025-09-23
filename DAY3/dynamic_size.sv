module dynamic_array_size;
  int arr[];
  initial begin 
    arr=new[5];
    arr={1,2,3,4,5};
    arr=new[7](arr);
    $display("size of an array=%d",arr.size());
  end
endmodule
    
