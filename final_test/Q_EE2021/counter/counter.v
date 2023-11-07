module counter(CLK,Q,LDn,D,CLRn);
	input CLK,LDn,CLRn;
	input [3:0]D;
	output [3:0]Q;
	
	reg [3:0]Q;
	always@(posedge CLK or negedge CLRn)
		if(!CLRn)
			Q <= 0;
		else if(LDn)
			Q <= Q + 1;
		else
			Q <= D;
	
endmodule
