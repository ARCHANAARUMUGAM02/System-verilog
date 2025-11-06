class parent;
  bit[31:0]data;
  function display();
    $display("value of data=%0d",data);
  endfunction 
endclass
class  child extends parent;
  bit[31:0] addr;
   function display();
     $display("value of addr=%0d",addr);
  endfunction 
endclass
  module testbench;
    initial begin
    parent p1;
    child c1;
      c1=new();
      c1.data=100;
      c1.addr=150;
      c1.display();
    end
  endmodule
