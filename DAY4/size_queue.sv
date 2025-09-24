module q_size;
  int q[$] = {11,22,33};
  initial begin
    $display("Queue = %p, Size = %0d", q, q.size());
  end
endmodule
