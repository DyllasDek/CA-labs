module sub
(
	 input      [4:0] rs, rt,
	 output     [31:0] sub_v
);

assign sub_v = glob.r[rs] - glob.r[rt];
	
endmodule
