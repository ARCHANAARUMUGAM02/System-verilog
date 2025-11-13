module simple_param_mailbox;

  mailbox #(int) mbx = new();   // mailbox that stores only integers

  initial begin
    fork
      sender;
      receiver;
    join
  end

  task sender;
    int  data;
    data =10;
    $display("[%0t] Sender: putting data = %0d", $time, data);
    mbx.put(data);   // send data
  endtask

  task receiver;
    int rcv_data;
    mbx.get(rcv_data);   // receive data
    $display("[%0t] Receiver: got data = %0d", $time, rcv_data);
  endtask

endmodule
