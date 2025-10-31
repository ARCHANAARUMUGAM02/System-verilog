virtual class packet;
  bit[31:0]addr;
  // virtual function void display();
   //endfunction
endclass
class transaction extends packet;
  function void display();
    $display("value of addr=%0d",addr);
  endfunction
endclass
module tb;
  initial begin
    transaction t1;
    t1=new();
    t1.addr=10;
    t1.display();
  end
endmodule
