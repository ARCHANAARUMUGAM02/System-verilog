module merging_events;
  event e1,e2;
  task process_a();
    e1=e2;
    #10;
    ->e2;
    $display("event e2 is triggered");
  endtask
  task process_b();
    wait(e1.triggered);
    $display("event e1 is received");
  endtask
  initial begin
    fork
    process_a();
      process_b();
    join
  end 
endmodule
    
