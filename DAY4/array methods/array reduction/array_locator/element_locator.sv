module array_element_locator;
int arr[]='{2,3,4,5,4,6};
int result[$];
initial begin
  result=arr.find(x)with(x<3);
  $display("elements less than 3=%0p",result);
  result=arr.find_first(x)with(x<3);
  $display("elements of first  less than 3=%0p",result);
   result=arr.find_last(x)with(x<3);
  $display("elements of last  less than 3=%0p",result);
  result=arr.unique();
  $display("unique elements in the arr=%0p",result);
  result=arr.max();
  $display("maximum value in the arr=%0p",result);
  result=arr.min();
  $display("minimum values in the arr=%0p",result);
end
endmodule
