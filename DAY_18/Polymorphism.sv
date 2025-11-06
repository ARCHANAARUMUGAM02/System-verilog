class parent;
  bit [31:0]data;
  int id;
  virtual function void display();
    $display("value of data=%0d,id=%0d",data,id);
  endfunction
endclass
class child_1 extends parent; 
  function void display();
    $display("value of data=%0d,id=%0d",data,id);
  endfunction
endclass
class child_2 extends parent;
  function void display();
    $display("value of data=%0d,id=%0d",data,id);
  endfunction
endclass
class child_3 extends parent;
  function void display();
    $display("value of data=%0d,id=%0d",data,id);
    endfunction
endclass
module testbench;
  initial begin
  parent p1,p2,p3;
  child_1 c1;
  child_2 c2;
  child_3 c3 ;
    c1=new();
    c2=new();
    c3=new();
  c1.data=150;
  c1.id=1;
  c2.data=200;
  c2.id=2;
  c3.data=250;
  c3.id=10;
  p1=c1;
  p2=c2;
  p3=c3;
     p1.data=200;
    p1.id=2;
    p1.display();
    p2.display();
    p3.display();
   
  end
endmodule
  
  
  
    
