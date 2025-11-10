typedef class B;  // forward declaration

class A;
  B b_h;          // OK now! compiler knows B will exist
endclass

class B;
  A a_h;
endclass
