class parent;
  protected bit[31:0]tmp;
  function new(bit [31:0]r_addr);
    tmp=r_addr+10;
  endfunction
  function void  display();
    $display("value of tmp=%0d",tmp);
  endfunction
endclass
class child extends parent;
  function new(bit [31:0]r_addr);
    super.new(r_addr);
  endfunction
  function void inc_addr();
    tmp++;
  endfunction
endclass
module encapsulation;
  initial begin
    child c1;
    c1=new(5);
    c1.inc_addr();
    c1.display();
  end
endmodule
  
