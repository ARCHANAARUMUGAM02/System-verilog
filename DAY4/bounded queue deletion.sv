module bounded_queue;
  int q[$]='{20,30,40,10,50};
  int a;
  initial begin
     a=q.pop_back();
    $display("Popped back = %0d, queue = %p", a, q);
     a=q.pop_front();
    $display("Popped front = %0d, queue = %p", a, q);
  end
endmodule
    
