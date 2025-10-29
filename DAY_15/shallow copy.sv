class interest;
  int fruits;
  int vegetables;
  function new();
    fruits=10;
    vegetables=6;
  endfunction
  function void display();
    $display("the values of fruits=%0d,vegetables=%0d",fruits,vegetables);
  endfunction
endclass
  module  tb;
    interest i1;
    interest i2;
    initial begin
    i1=new();
    i1.display();
    i2=new i1;
    i2.display();
    i2.fruits=20;
    i1.display();
      i2.display();
      i1.fruits=15;
      i1.vegetables=16;
      i1.display();
      i2=new i1;
      i2.display();
    end
  endmodule
    
    
    
    
     
