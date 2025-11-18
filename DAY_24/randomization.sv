// Code your testbench here
// or browse Examples
class generate_variable;
  rand bit[2:0] value;
  constraint cons {value==3'h5;}
endclass
module generate_tb;
  generate_variable gen;
  //gen=new();
  initial begin
      gen=new();
    if(gen.randomize())
      $display("randomization successfull ",gen.value);
    else
      $display("randomization failed",gen.value);
    if(gen.randomize()with {value==3'h2;})
      $display("randomization successfull ",gen.value);
    else
      $display("randomization failed",gen.value);
  end
endmodule
      
