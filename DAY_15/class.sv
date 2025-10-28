class home;
 bit light;
 bit fan;
  string switch;
  task open_electricity();
    switch="ON";
      $display("\t switch is %0s so electricity is open",switch);  
  endtask
endclass
  module check_electricity;
  initial begin
    home h1;
    h1=new();
    h1.light=1;
    h1.fan=1;
    h1.open_electricity;
    $display("\t the light is ON(%0d) and the fan is ON(%0d)",h1.light,h1.fan );
  end
  endmodule
    
  
  
