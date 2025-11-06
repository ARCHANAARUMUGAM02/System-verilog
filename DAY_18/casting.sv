class parent ;
  bit[31:0]addr;
  function void display();
    $display("value of addr=%0d",addr);
  endfunction
endclass
class child extends parent;
  bit[31:0]data;
  function void display();
    super.display();
    $display("value of data=%0d",data);
  endfunction
endclass
module tb;
  initial begin
    parent p1;
    child c;
     child c1;
    c=new();
    c.data=10;
    c.addr=20;
    p1=c;
    $cast(c1,p1);
    c1.display();
  end 
endmodule
  
