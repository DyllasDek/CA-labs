module ex2 (x,y,cin,z,cout);
  input  x;
  input  y;
  input  cin;
  output z;
  output cout;
  wire w1;
  wire w2;
  wire w3;
  assign w1 = x ^ y;
  assign w2 = w1 & cin;
  assign w3 = x & y;
  assign z   = w1 ^ cin;
  assign cout = w2 | w3;
endmodule