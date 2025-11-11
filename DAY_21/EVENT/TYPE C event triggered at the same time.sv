// Code your testbench here
// or browse Examples
module event_exampleC();
  event e1;

  task process_A();
    #10;
    $display("@%0t: Before triggering event e1", $time);
    -> e1; // Trigger and wait occur same time
    $display("@%0t: After triggering event e1", $time);
  endtask

  task process_B();
    $display("@%0t: waiting for the event e1", $time);
    @ (e1);
    $display("@%0t: event e1 is triggered", $time);
  endtask

  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule
