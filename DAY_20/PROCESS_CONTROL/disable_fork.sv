module disable_fork_example;
  initial begin
    fork
      begin
        repeat (5) begin
          #5; $display("Thread 1 running @%0t", $time);
        end
      end
      begin
        repeat (10) begin
          #2; $display("Thread 2 running @%0t", $time);
        end
      end
    join_none

    #10;
    $display("Disabling all forked threads at %0t", $time);
    disable fork;  // Kill all forked threads
    $display("Main thread continues after disable @%0t", $time);
  end
endmodule
