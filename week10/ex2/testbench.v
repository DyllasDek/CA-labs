module testbench;

// input and output test signals
reg a, b, cin;
wire cout, sum;

// creating the instance of the module we want to test
ex2 fa(a, b, cin, sum, cout);
initial
begin
a = 1'b0;
b = 1'b1;
cin = 1'b0;
#5; // pause (5 units of delay )
cin = 1'b1;
#5;
a = 1'b1;
b = 1'b0;
#5;
cin = 1'b0;
#5
a = 1'b0;
b = 1'b0;
#5
cin = 1'b1;
#5
a = 1'b1;
b = 1'b1;
#5;
cin = 1'b0;
end

// print signal values on every change
initial
$monitor("a= %b b = %b cin = %b sum = %b cout = %b", a, b, cin, sum, cout);
initial
$dumpvars;
endmodule