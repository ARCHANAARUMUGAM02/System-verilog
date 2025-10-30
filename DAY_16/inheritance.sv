class parent ;
  bit[7:0]data;
  function void display_1();
    $display("value of data=%0d",data);
  endfunction
endclass
class child extends parent;
  int id;
  function void display_2();
    $display("value of id=%0d",id);
  endfunction
endclass
module inheritance_example;
  child c1;
  initial begin
    c1=new();
  c1.id=15;
  c1.data=8'b100;
    c1.display_1();
    c1.display_2();
    end
endmodule
  
