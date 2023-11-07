module CLK_DIV(CLK,CLRn,CLK_2,CLK_4,CLK_8);
	input CLK,CLRn;
	output reg CLK_2,CLK_4,CLK_8;
	
	always@(posedge CLK or negedge CLRn)
		if(!CLRn)
			CLK_2 <= 0;
		else
			CLK_2 <= ~CLK_2;
			
	always@(posedge CLK_2 or negedge CLRn)
		if(!CLRn)
			CLK_4 <= 0;
		else
			CLK_4 <= ~CLK_4;
endmodule
