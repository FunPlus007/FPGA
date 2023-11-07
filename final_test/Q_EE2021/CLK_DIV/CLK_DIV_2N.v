module CLK_DIV_2N(CLK,CLRn,CLK_10);
	parameter N = 5;
	parameter W = 3;
	input CLK,CLRn;
	output reg CLK_10;
	reg [W-1:0]counter;
	
	always@(posedge CLK or negedge CLRn)
		if(!CLRn) begin
			CLK_10 <= 0;
			counter <= 0;
		end
		else if(counter < (N - 1))
			counter <= counter + 1;
		else begin
			counter <= 0;
			CLK_10 <= ~CLK_10;
		end
		
endmodule
