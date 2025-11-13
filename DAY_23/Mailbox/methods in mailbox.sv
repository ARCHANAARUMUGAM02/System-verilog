```systemverilog
module mailbox_methods_example;

  mailbox #(int) mbx = new(2);
  int data;

  initial begin
    $display("[%0t] --- put() demonstration ---", $time);
    mbx.put(10);
    mbx.put(20);
    $display("[%0t] Mailbox filled, num = %0d", $time, mbx.num());

    $display("[%0t] --- try_put() demonstration ---", $time);
    if (mbx.try_put(30))
      $display("[%0t] try_put succeeded", $time);
    else
      $display("[%0t] try_put failed (mailbox full)", $time);

    $display("[%0t] --- peek() demonstration ---", $time);
    mbx.peek(data);
    $display("[%0t] Peeked data = %0d (not removed)", $time, data);

    $display("[%0t] --- get() demonstration ---", $time);
    mbx.get(data);
    $display("[%0t] Got data = %0d", $time, data);

    $display("[%0t] --- try_get() demonstration ---", $time);
    if (mbx.try_get(data))
      $display("[%0t] try_get succeeded, got %0d", $time, data);
    else
      $display("[%0t] try_get failed (mailbox empty)", $time);

    $display("[%0t] --- num() demonstration ---", $time);
    $display("[%0t] Items remaining in mailbox = %0d", $time, mbx.num());
  end

endmodule
```
