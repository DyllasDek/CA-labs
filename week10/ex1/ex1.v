module ex1 (x, y, z, carry);
  input  x;
  input  y;
  output z;
  output carry;
  assign z = x ^ y;
  assign carry = x & y;
endmodule