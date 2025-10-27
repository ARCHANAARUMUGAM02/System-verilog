module functionpass by positional_value();
  int result;
  initial begin
    result=sum(.var1(2),.var2(3));  
    $display("\n\t@ %0t ns, value of sum is %0d\n",$time,result);
    
  end
  function int sum( input int var1,var2);
    return var1+var2;
  endfunction
endmodule
