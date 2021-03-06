module ex3(
	input s,
	input r,
	output q,
	output q_n
);
	assign q = ~ ( r | q_n );
	assign q_n = ~ ( s | q );
endmodule

module testbench ;
	reg s, r;
	wire q, q_n;
	sr_latch Ex_3 (s, r, q, q_n);
	initial $dumpvars ;
	initial
	begin
		$monitor ("%0d s %b r %b q %b q_n %b", $time , s, r, q, q_n);
		# 10; s = 0; r = 0;
		# 10; s = 1; r = 0;
		# 10; s = 0; r = 0;
		# 10; s = 0; r = 1;
		# 10; s = 0; r = 0;
		# 10; s = 1; r = 1;
		# 10; s = 0; r = 0;
		# 10; s = 0; r = 0;
		# 10;
		$finish ;
	end
endmodule