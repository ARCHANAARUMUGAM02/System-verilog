module dynamic_new();
int arr[];  
initial begin
arr = '{1,2,4,3};      
$display("Initial array: %p", arr);
arr = new[5](arr);     
arr[4] = 10;          
$display("Resized array: %p", arr);
end
endmodule
