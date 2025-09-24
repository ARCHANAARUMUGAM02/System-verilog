module queue_insert;
  int q[$];
  initial begin
    q.push_back(10);
    q.push_back(20);
    q.push_back(30);
    q.push_back(40);
    $display("elements in the queue after pop=%p",q);
   end
endmodule
