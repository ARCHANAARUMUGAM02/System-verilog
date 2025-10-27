module func_return_array;
  int array[5];
  initial begin
    void'(fun_arr(array)); 
     $display("After function call: array = %0p", array);
  end

  function automatic int fun_arr( input int arr[5]);
    foreach (arr[i]) begin
      arr[i] = i + 1;
    end
  endfunction
endmodule 
