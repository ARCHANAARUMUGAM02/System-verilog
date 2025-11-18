class random_variable;
  randc bit [2:0]a;
endclass
random_variable raf;
module rand_tb;
  initial begin
    raf=new();
    for(int i=0;i<=16;i++)begin
      void'( raf.randomize());
      $display("itereation=%0d,value of a=%0b",i,raf.a);
    end
  end
    endmodule
    
