module counter_MN(CLK,CLRn,Q);
	parameter N = 10;
	parameter W = 4;
	input CLK,CLRn;
	output reg [W-1:0]Q;
	
	always@(posedge CLK or negedge CLRn)
		if(!CLRn)
			Q <= 0;
		else
			Q <= (Q + 1) % N;
endmodule
