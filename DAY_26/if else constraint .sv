class sequential_item;
  rand bit[7:0]value;
  rand enum{LOW,HIGH}scale;
  
  constraint scale_tr{if(scale==LOW)
                          value<50;
                      else
                        value>=50;}
endclass
module seq_tb;
  sequential_item item;
  
  initial begin
    item=new();
    repeat(10)begin
      item.randomize();
      $display("scale=%s,value=%0d",item.scale.name(),item.value);
    end
  end
endmodule
                        
               
