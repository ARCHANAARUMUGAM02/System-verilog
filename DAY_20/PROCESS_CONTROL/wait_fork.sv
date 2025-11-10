module wait_fork_example;
  initial begin
    fork
      begin
        #5;  $display("Thread A finished @%0t", $time);
      end
      begin
        #10; $display("Thread B finished @%0t", $time);
      end
    join_none   // Don’t wait here
    $display("Main thread continues immediately @%0t", $time);

    wait fork;  // Wait here until both forked threads are done
    $display("All forked threads completed @%0t", $time);
  end
endmodule
