module functiondefault_value();
  int result;
  initial begin
      
    $display("sum of two numbers=%0d",sum());
    result=sum();
  end
  function int sum(int var1=4,var2=3);
    return var1+var2;
  endfunction
endmodule
