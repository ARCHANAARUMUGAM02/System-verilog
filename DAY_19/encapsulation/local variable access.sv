class local_class;
 local bit[31:0] tmp;
  function new(bit[31:0] addr);
    tmp=addr+5;
   endfunction
  function  display();
     $display("value of tmp=%0d",tmp);
  endfunction
endclass
module encapsulation;
  initial begin
  local_class l1;
  l1=new(5);
 //l1.tmp=20;
  l1.display();
  end
endmodule
