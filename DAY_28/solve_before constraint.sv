class solve_ct;
  rand bit a;
  rand bit [4:0]b;
  constraint a_b {solve a before b;};
  constraint sa_b{(a==b)->b==0;}
endclass
module tb;
  solve_ct sc;
  initial begin
    sc=new();
    repeat(10)begin
      void'(sc.randomize());
      $display("value of a=%0d,b=%0d",sc.a,sc.b);
    end 
  end
endmodule
    
