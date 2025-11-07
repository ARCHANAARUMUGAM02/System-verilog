class MyClass;
  static int count = 0;   // static variable
   static function void showCount();
    $display("Count = %0d", count);
  endfunction
endclass

module top;
  initial begin
    MyClass::count = 10;    // Access static variable
    MyClass::showCount();   // Access static function
  end
endmodule
