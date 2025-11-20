class sequential_item;
  rand bit[3:0]a;
  
 
  constraint a_distribution{ a dist {0:=3,[1:3]:/6};}

endclass
module seq_tb;
  sequential_item item;
  
  initial begin
    item=new();
    repeat (10)begin
    if(item.randomize())
      $display("a=%d",item.a);
    else
      $display("randomization failed");
    
    end
  
  end
endmodule
             
