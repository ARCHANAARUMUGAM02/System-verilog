class sv_class;
  int x;

  task set(int i);
    x = i;
  endtask

  function int get();
    return x;
  endfunction
endclass


module top;
  initial begin
    sv_class class_1;
    class_1 = new();
    class_1.set(10);
    $display("Value of x = %0d", class_1.get());
  end
endmodule
