module fixed_array();
logic[7:0] array[0:3];
int sum;
int i;
initial begin
array[0]=1;
array[1]=2;
array[2]=3;
array[3]=5;
for(i=0; i<4; i=i+1)
$display("Element %0d = %0d", i, array[i]);
end
endmodule
