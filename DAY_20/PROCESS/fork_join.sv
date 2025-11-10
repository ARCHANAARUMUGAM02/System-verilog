module thread_fork_join;
  initial begin
    fork
      begin
        $display("Thread A start @%0t", $time);
        #5; $display("Thread A end @%0t", $time);
      end

      begin
        $display("Thread B start @%0t", $time);
        #10; $display("Thread B end @%0t", $time);
      end
    join
    $display("All threads completed @%0t", $time);
  end
endmodule
