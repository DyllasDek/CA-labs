module add
(
	 input      [4:0] rs, rt,
	 output     [31:0] add_v
);

assign add_v = glob.r[rs] + glob.r[rt];
	
endmodule
