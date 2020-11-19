module srl
(
	 input      [4:0] rt, 
	 input	   [4:0] shamt,
	 output     [31:0] srl_v
);

assign srl_v = glob.r[rt] >> shamt;
	
endmodule
