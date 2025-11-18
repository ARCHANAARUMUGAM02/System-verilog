class generator;
  rand bit[4:0]value;
  int i;
  function void pre_randomize();
    if(i % 2==0)begin
      rand_mode(0);
      $display("stopping randomization");
    end
    else begin
      rand_mode(1);
      $display("randomizing values");
    end
    i++;
  endfunction
endclass
  module generator_tb;
    generator gen;
    initial begin
      gen=new();
      for(int i=0;i<=4;i++)begin
      void'(gen.randomize());
       #1 $display("\t[%0t] @ iteration: %0d -----> value: %0d ", $time, i, gen.value); 
    end
    end
  endmodule
    
      
      
