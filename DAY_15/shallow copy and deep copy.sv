class Object_B;
	bit [4:0] delay;
	function new (bit [4:0] delay_i);
		delay = delay_i;
	endfunction
 endclass

 class Object_A;
   
	bit [7:0] addr;
	bit [7:0] data;
	Object_B obj_b0;
   
	function new (bit [7:0] addr_i, bit [7:0] data_i, bit [4:0] dly_i);
		addr = addr_i;
		data = data_i;
		obj_b0 = new (dly_i);
	endfunction
   
   // Function used for deep copy
   function copy (Object_A obj_a);
      this.addr = obj_a.addr;
      this.data = obj_a.data;
      this.obj_b0.delay = obj_a.obj_b0.delay;
   endfunction

 endclass

 module top;
   
    // Instance of Object_A class used for shallow copy example
	Object_A obj_a0, obj_a1;
   
    // Instance of Object_A class used for deep copy example
    Object_A obj_a0_d, obj_a1_d;
	initial begin
        
        //*********SHALLOW COPY EXAMPLE START ***********************
      	obj_a0 = new (8'h5, 8'h25, 5'h10);
      
        // Shallow copy obj_a0 to obj_a1
	  	obj_a1 = new obj_a0;
	  	obj_a0.addr = 8'h0;
	  	obj_a0.data = 8'h5;
	  	obj_a0.obj_b0.delay = 5'h5;
        $display("Change values of obj_a0:");
        $display("[obj_a0] addr = %0h, data = %0h, delay = %0h, ",obj_a0.addr, obj_a0.data, obj_a0.obj_b0.delay);
        $display("[obj_a1] addr = %0h, data = %0h, delay = %0h ",obj_a1.addr, obj_a1.data, obj_a1.obj_b0.delay);        
        obj_a1.addr = 8'h1;
	  	obj_a1.data = 8'h2;
	  	obj_a1.obj_b0.delay = 5'h3; 
      
        //********* SHALLOW COPY EXAMPLE END ***********************
      
        //********* DEEP COPY EXAMPLE START ************************
        obj_a0_d = new (8'h5, 8'h25, 5'h10);
        $display("[Obj_a0_d ] addr = %0h, data = %0h, delay = %0h",obj_a0_d.addr, obj_a0_d.data, obj_a0_d.obj_b0.delay);
      
		// need to give some values, or it will have null value
		obj_a1_d = new (8'h2, 8'h15, 5'h6);
      
        // Deep copy obj_a0_d to obj_a1_d
        obj_a1_d.copy (obj_a0_d); 
        $display("[Obj_a1_d ] addr = %0h, data = %0h, delay = %0h \n",obj_a1_d.addr, obj_a1_d.data, obj_a1_d.obj_b0.delay);

		obj_a0_d.addr = 8'h10;	
		obj_a0_d.data = 8'h20;
		obj_a0_d.obj_b0.delay = 8'h1;
      $display("[Obj_a0_d ] addr = %0h, data = %0h, delay = %0h",obj_a0_d.addr, obj_a0_d.data, obj_a0_d.obj_b0.delay);
      $display("[Obj_a1_d ] addr = %0h, data = %0h, delay = %0h",obj_a1_d.addr, obj_a1_d.data, obj_a1_d.obj_b0.delay);
      //********* DEEP COPY EXAMPLE END ************************
	end
     
 endmodule
