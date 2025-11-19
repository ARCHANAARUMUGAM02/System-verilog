class constraint_blocks;
   rand bit[3:0]addr;
 constraint addr_range;
endclass
constraint constraint_blocks ::addr_range{addr<5;}
module constraint_tb;
  constraint_blocks pkt;
  //pkt=new();
  initial begin
    pkt=new();
    repeat(10)begin
      pkt.randomize();
      $display("values randomized=%0d",pkt.addr);
    end
  end
endmodule
