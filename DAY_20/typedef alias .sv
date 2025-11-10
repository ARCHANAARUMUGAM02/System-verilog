class Packet;
  int id;
endclass

typedef Packet Pkt_t;  // alias

module top;
  initial begin
    Pkt_t p = new();   // same as Packet p = new();
    p.id = 100;
    $display("Packet ID = %0d", p.id);
  end
endmodule
