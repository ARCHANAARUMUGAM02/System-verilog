 // Code your testbench here
// or browse Examples
module wait_orderr;
  event e1,e2,e3;
  task process_A();
    begin
      #5;
    ->e1;
    $display("event e1 is triggered");
    end
  endtask
   task process_B();
    begin
     // #10;
    ->e2;
      $display("event e2 is triggered");
    end
  endtask
   task process_c();
    begin
     // #15;
    ->e3;
      $display("event e3 is triggered");
    end
  endtask
  task wait_process();
    wait_order(e1,e3,e2)
    $display("all events are triggered");
    else 
      $display("events are triggered out of order");
  endtask
  initial begin
    fork
      process_A();
      process_B();
       process_c();
      wait_process();
    join
  end
endmodule
            
            
           
      
