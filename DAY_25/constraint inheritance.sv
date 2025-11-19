class packet ;
   rand bit[3:0]addr;
constraint addr_range{addr<5;}
endclass
class packet1 extends packet;
   rand bit[3:0]addr;
  constraint addr_range{addr>5;}
endclass

//constraint constraint_blocks ::addr_range{addr<5;}
module constraint_tb;
  packet pkt1;
  packet pkt2;
  //pkt=new();
  initial begin
    pkt1=new();
    pkt2=new();
    repeat(10)begin
      pkt1.randomize();
      $display("values randomized for pkt1=%0d",pkt1.addr);
    end
    repeat(10)begin
      pkt2.randomize();
      $display("values randomized for pkt2=%0d",pkt2.addr);
    end
  end
endmodule
