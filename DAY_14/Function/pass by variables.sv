// Code your design here
module functionpassby_variables();
  int result,a,b;
  initial begin
    a=4;
    b=5;
    result=sum(a,b);  
    $display("\n\t@ %0t ns, value of sum is %0d\n",$time,result);
    
  end
  function int sum( input int a,b);
    return a+b;
  endfunction
endmodule
