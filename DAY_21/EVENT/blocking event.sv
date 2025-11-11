module blocking_event;
  event e1;

  // Process that waits for the event
  initial begin
    $display("@%0t: Process B waiting for event e1", $time);
    @ (e1); // Wait for the event
    $display("@%0t: Process B detected event e1", $time);
  end

  // Process that triggers the event
  initial begin
    #10;
    $display("@%0t: Before triggering event e1", $time);
    -> e1; // 🔹 Blocking trigger — happens immediately
    $display("@%0t: After triggering event e1", $time);
  end
endmodule
