class bidirectional;
  rand int a;
  rand int b;
  constraint bi_c{a==b+5||b==a+5;a inside{[0:20]};b inside {[0:20]};}
endclass
module tb;
  bidirectional bi_c;
  initial begin
    bi_c =new();
    repeat (5)begin
      bi_c.randomize();
      $display("value of a=%0d,b=%0d",bi_c.a,bi_c.b);
    end
  end
endmodule
