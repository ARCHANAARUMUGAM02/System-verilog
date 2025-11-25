// Code your testbench here
// or browse Examples
// ============================================================
// COMPLETE PRACTICE CODE — Bidirectional + Solve-Before + Arrays
// ============================================================

class practice_c;

  // -------------------------
  // Random Variables
  // -------------------------
  rand int mode;          // decides packet type
  rand int width;         // depends on mode
  rand int size;          // number of elements
  rand int arr[];         // dynamic array
  rand int a, b;          // bidirectional vars
  rand int sum;           // computed from array

  // -------------------------
  // Constraints
  // -------------------------
  constraint mode_c {
    mode inside {0, 1};

    // if-else constraint
    if (mode == 0)
      width == 4;
    else
      width == 8;

    size inside {[3:6]};   // array length limit
  }

  // -------------------------
  // Array size depends on 'size'
  // -------------------------
  constraint arr_c {
    arr.size() == size;

    // array elements range
    foreach(arr[i])
      arr[i] inside { [1:10] };
  }

  // -------------------------
  // Bidirectional constraint
  // -------------------------
  constraint bidir_c {
    (a == b + 5) || (b == a + 5);
  }

  // -------------------------
  // Sum of array elements
  // -------------------------
  constraint sum_c {
    sum == arr.sum();   // sum depends on array content
  }

  // -------------------------
  // Solve-before ordering
  // -------------------------
  constraint solve_order {
    solve mode before width;     // mode → width
    solve size before arr;       // size → arr
    solve arr before sum;        // arr → sum
    solve a before b;            // a → b for stability
  }

endclass



// ============================================================
// TESTBENCH TO RUN AND DISPLAY VALUES
// ============================================================
module tb;

  practice_c obj;

  initial begin
    obj = new();

    repeat (10) begin
      if (!obj.randomize()) begin
        $display("Randomization FAILED!");
      end

      $display("\n====================================");
      $display("mode = %0d  width = %0d  size = %0d", 
                obj.mode, obj.width, obj.size);
      $display("arr     = %0p", obj.arr);
      $display("sum     = %0d", obj.sum);
      $display("a = %0d, b = %0d", obj.a, obj.b);
    end
  end

endmodule
