class unique_example;
  rand int nums[3];
  constraint unique_c{unique{nums};}
endclass
module tb;
  unique_example u;
  initial begin
    u=new();
    repeat(5)begin
      void'(u.randomize());
      $display("nums = %0p", u.nums);
    end
  end
endmodule
