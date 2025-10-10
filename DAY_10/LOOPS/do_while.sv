module while_loop;
  int i;
  initial begin
    i=0;
   do begin
     i++;
     $display("iterated valueof i=%0d",i);
   end
   while(i<=5);
  end
endmodule
