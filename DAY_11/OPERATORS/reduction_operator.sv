module test;
  logic [3:0] a;
  logic y;

  initial begin
    a = 4'b1011;
    $display("\n\tThe value of a is %0b", a);

    y = !a;  
    $display("\n\tThe reduction output of NOT is %0d", y);

    y = |a;  
    $display("\n\tThe reduction output of OR is %0b", y);

    y = &a;  
    $display("\n\tThe reduction output of AND is %0d", y);

    y = ~|a;  
    $display("\n\tThe reduction output of NOR is %0b", y);

    y = ~&a;  
    $display("\n\tThe reduction output of NAND is %0b", y);

    y = ^a;  
    $display("\n\tThe reduction output of XOR is %0b", y);

    y = ~^a;  
    $display("\n\tThe reduction output of XNOR is %0b", y);
  end
endmodule

