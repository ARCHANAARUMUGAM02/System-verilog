class parent;
  function new();
    $display("Parent constructor called");
  endfunction
endclass

class child extends parent;
  function new();
    super.new(); // calling parent’s constructor
    $display("Child constructor called");
  endfunction
endclass

module tb;
  initial begin
    child c = new();
  end
endmodule
