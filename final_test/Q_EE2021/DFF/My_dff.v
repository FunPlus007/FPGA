module My_dff(D,Q,CLK,CLRn);
	input D,CLK,CLRn;
	output reg Q;
	
	always@(posedge CLK or negedge CLRn)
		if(!CLRn)
			Q <= 0;
		else
			Q <= D;
endmodule
