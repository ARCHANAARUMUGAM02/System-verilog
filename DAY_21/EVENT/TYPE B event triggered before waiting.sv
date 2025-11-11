module event_exampleB();
  event e1;

  task process_A();
    #10;
    $display("@%0t: Before triggering event e1", $time);
    -> e1; // Trigger event first
    $display("@%0t: After triggering event e1", $time);
  endtask

  task process_B();
    #20; // starts waiting late
    $display("@%0t: Waiting for event e1", $time);
    @ (e1); // event was already triggered
    $display("@%0t: Event e1 is triggered", $time);
  endtask

  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule
