module counter_M10(CLK,Q,CLRn,Co);
	input CLK,CLRn;
	output reg [3:0]Q;
	output reg Co;
	
//	assign Co = ~| Q;
	
	always@(posedge CLK or negedge CLRn) begin
		if(!CLRn)
			Q <= 0;
		else if(Q < 9) begin
			Q <= Q + 1;
			Co <= 0;
		end
		else begin
			Q <= 0;
			Co <= 1;
		end
	end
endmodule
