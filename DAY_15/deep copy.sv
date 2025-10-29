class address;
  int start, finish;

  function new();
    start = 0;
    finish = 10;
  endfunction

  function address copy();
    address temp = new();
    temp.start  = this.start;
    temp.finish = this.finish;
    return temp;
  endfunction
endclass


class packet;
  int id;
  address addr;  // sub-object

  function new();
    id = 5;
    addr = new();
  endfunction

  function packet copy();
    packet temp = new();
    temp.id = this.id;
    temp.addr = this.addr.copy(); // deep copy of sub-object
    return temp;
  endfunction

  function void display(string name);
    $display("%s: id=%0d, start=%0d, finish=%0d", 
              name, id, addr.start, addr.finish);
  endfunction
endclass


module tb;
  packet p1, p2;

  initial begin
    p1 = new();
    p1.addr.start  = 50;
    p1.addr.finish = 60;
    p1.display("p1 original");
    p2=new();
    p2 = p1.copy();
    p2.display("p2 original");// deep copy
    p2.id = 9;
    p2.addr.start  = 100; // change inner object
    p2.addr.finish = 200;

    $display("After modification:");
    p1.display("p1");
    p2.display("p2");
  end
endmodule
