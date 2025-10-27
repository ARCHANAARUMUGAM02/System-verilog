module func_call_from_display();
  initial begin
    $display("\t \@%0t ns ,value of sum is %0d\n",$time,sum(5,6));
  end
  function int sum(int var1,var2);
    return var1+var2;
  endfunction
endmodule
  
