// Code your testbench here
// or browse Examples
module nonblocking_event;
  event e1;

  // Process that waits for the event
  initial begin
    $display("@%0t: Process B waiting for event e1", $time);
    @ (e1);
    $display("@%0t: Process B detected event e1", $time);
  end

  // Process that triggers the event
  initial begin
    #10;
    $display("@%0t: Before scheduling event e1", $time);
    ->> e1; // 🔸 Non-blocking trigger — schedules event for next delta cycle
    $display("@%0t: After scheduling event e1", $time);
  end
endmodule
