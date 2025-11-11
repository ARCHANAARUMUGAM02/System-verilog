module event_example;
  event done;

  initial begin
    $display("Time %0t: Waiting for event...", $time);
    @ (done); // Wait for event trigger
    $display("Time %0t: Event occurred!", $time);
  end

  initial begin
   #20;       // Wait 10 time units
    -> done;   // Trigger the event
    $display("Time %0t: Event triggered!", $time);
  end
endmodule
