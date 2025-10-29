class assignment;
   int c;
  int d;
  function new();
    c=1;
    d=1;
  endfunction
  function void display();
    $display("values of c=%0d,d=%0d",c,d);
  endfunction
endclass
  module assignment_tb;
    assignment a1;
    assignment a2;
    initial begin
    a1=new();
    a1.display();
    a2=a1;
    a2.display();
    a1.c=4;
    a1.display();
    a1.d=5;
    a1.display();
    end
  endmodule
