class packet;
  bit [31:0]addr;
  bit [4:0]data;
  extern virtual function void display();
     endclass
    function void  packet::display();
      $display("value od addr=%0d,data=%0d",addr,data);
    endfunction
   
    module tb;
      initial begin
        packet p;
        p=new();
        p.addr=10;
        p.data=15;
        p.display();
      end
    endmodule
