module thread_fork_join_any;
  initial begin
    fork
      begin
        #5; $display("Task1 done @%0t", $time);
      end
      begin
        #10; $display("Task2 done @%0t", $time);
      end
    join_any
    $display("At least one thread finished @%0t", $time);
  end
endmodule
