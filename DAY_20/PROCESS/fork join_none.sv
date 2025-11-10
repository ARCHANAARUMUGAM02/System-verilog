module thread_fork_join_none;
  initial begin
    fork
      begin
        #5; $display("Thread 1 done @%0t", $time);
      end
      begin
        #10; $display("Thread 2 done @%0t", $time);
      end
    join_none
    $display("Main thread continues immediately @%0t", $time);
    #15;
  end
endmodule
