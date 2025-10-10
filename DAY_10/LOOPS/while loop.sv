module while_basic;
  int apple=1;
  initial begin
    while(apple<6)
    begin  
      $display ("\t Value of apple = %0d",apple);
      apple++;
    end 
  end 
endmodule 
