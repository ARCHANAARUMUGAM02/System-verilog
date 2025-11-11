module event_example();
  event e1;

  task process_A();
    #10; 
    $display("@%0t: Before triggering event e1", $time);
    -> e1; // Trigger the event after 10 ns
    $display("@%0t: After triggering event e1", $time);
  endtask

  task process_B();
    $display("@%0t: waiting for the event e1", $time);
    @ (e1); // Wait for event e1 to be triggered
    $display("@%0t: event e1 is triggered", $time);
  endtask

  initial begin
    fork
      process_A(); // Task 1 — triggers event
      process_B(); // Task 2 — waits for event
    join
  end
endmodule
