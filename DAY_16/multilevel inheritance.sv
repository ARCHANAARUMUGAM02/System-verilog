class parent;
  bit [2:0] food;
  function void display_1();
    $display("food value=%0d",food);
  endfunction
endclass
class child_1 extends parent ;
  int dance;
  function void display_2();
    $display("dance=%0d",dance);
  endfunction
endclass
  class child_2 extends child_1;
    byte music;
   function void display_3();
     $display("music=%0d",music);
  endfunction
  endclass
    module multilevel_inheritance;
      child_2 c1;
      initial begin
        c1=new();
        c1.food=10;
        c1.dance=20;
        c1.music=4;
        c1.display_1();
         c1.display_2();
         c1.display_3();
      end
    endmodule
        
        
        
        
  
