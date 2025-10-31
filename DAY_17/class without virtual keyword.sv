class parent ;
  bit[4:0]data;
  int id;
  function void display();
    $display("Base:values of data=%0d,id=%0d",data ,id);
  endfunction
endclass
class child extends parent;
  function void display();
    $display(" Child:values of data=%0d,id=%0d",data, id);
  endfunction
endclass
module tb;
  initial begin
    parent p_tr;
    child c_tr;
    c_tr = new();
    p_tr = c_tr;
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule
  
