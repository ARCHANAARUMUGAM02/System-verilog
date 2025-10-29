class transaction;
  rand bit [5:0]data;
  function void display();
    $display("data stored=%0d",data);
  endfunction
endclass
  class generator;
    transaction trans;
    task run();
       trans=new();
      repeat(5)begin
      void'(trans.randomize());
        trans.display();
      end
    endtask
  endclass
module tb;
  generator gen = new();
  initial begin
    gen.run();
    $finish;
  end
endmodule
