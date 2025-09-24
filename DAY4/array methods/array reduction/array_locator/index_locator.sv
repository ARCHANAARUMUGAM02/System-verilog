module array_index_locator;
int arr[]='{2,3,4,5,4,6};
int result[$];
initial begin
  result=arr.find(x)with(x<3);
  $display("elements less than 3=%0p",result);
  result=arr.find_first(x)with(x<3);
  $display("elements of first  less than 3=%0p",result);
   result=arr.find_last(x)with(x<3);
  $display("elements of last  less than 3=%0p",result);
end
endmodule
