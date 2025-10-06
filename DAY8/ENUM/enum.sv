module enum_example;

  typedef enum logic [1:0] {IDLE=2'b00, RUN=2'b01, STOP=2'b10} state_t;

  state_t current_state;

  initial begin
    current_state = IDLE;
    $display("Current state = %0b", current_state);

    current_state = RUN;
    $display("Current state = %0b", current_state);

    current_state = STOP;
    $display("Current state = %0b", current_state);
  end

endmodule
