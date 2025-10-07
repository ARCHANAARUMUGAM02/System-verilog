package pckge_A;
int data=5;
function package_function();
  $display("pckge_A:inside pckge function,data=%0d",data);
endfunction
endpackage

package pckge_B;
int data=5;
function package_function();
  $display("pckge_B:inside pckge function ,data=%0d",data);
endfunction
endpackage

import pckge_A::*;
import pckge_B::*;
module package_example;
  initial begin
    pckge_A::package_function();
    pckge_B::package_function();
  end
endmodule
  
