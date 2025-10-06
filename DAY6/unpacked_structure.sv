module umpacked_structure;
typedef struct {
    int    id;          // 32-bit signed integer
    byte   age;         // 8-bit signed
    string name;        // string type (not allowed in packed structs)
  } person_t;
  
  person_t p1;
  
initial begin
    p1.id   = 101;
    p1.age  = 25;
    p1.name = "Archana";
    $display("Unpacked structure example:");
    $display("p1.id   = %0d", p1.id);
    $display("p1.age  = %0d", p1.age);
    $display("p1.name = %s", p1.name);
  end

endmodule
