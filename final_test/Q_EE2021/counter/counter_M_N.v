module counter_M_N(CLK,Q,CLRn,Co);
	parameter N = 100;
	parameter W = 7;
	input CLK,CLRn;
	output reg [W-1:0]Q;
	output reg Co;

	
	always@(posedge CLK or negedge CLRn) begin
		if(!CLRn)	begin
			Q <= 0;
			Co <= 0;
		end
		else if(Q < N-1) begin
			Q <= Q + 1;
			Co <= 0;
		end
		else begin
			Q <= 0;
			Co <= 1;
		end
	end
endmodule
