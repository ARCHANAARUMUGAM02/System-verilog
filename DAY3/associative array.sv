module associative_array();
  int asso_array[int];
  initial begin
    asso_array[1]=5;
    asso_array[3]=6;
    asso_array[5]=4;
    asso_array[7]=6;
    $display("asso_array[1]=%0d",asso_array[1]);
    $display("asso_array[3]=%0d",asso_array[3]);
    $display("asso_array[5]=%0d",asso_array[5]);
    $display("asso_array[7]=%0d",asso_array[7]);
  end
endmodule
    
