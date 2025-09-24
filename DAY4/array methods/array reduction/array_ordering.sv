module array_ordering;
  int q[$] = '{1,2,3,4,5};
  initial begin
    q.reverse();
    $display("1) Reverse = %p", q);

    q.shuffle();
    $display("2) Shuffle = %p", q);

    q.sort();
    $display("3) Sort (Ascending) = %p", q);

    q.rsort();
    $display("4) RSort (Descending) = %p", q);
  end
endmodule
