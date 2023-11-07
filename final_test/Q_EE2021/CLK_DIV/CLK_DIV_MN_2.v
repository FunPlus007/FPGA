module CLK_DIV_MN_2(CLK,CLRn,CLK_7);
	parameter MN = 7;
	parameter W = 4;
	input CLK,CLRn;
	output CLK_7;
	//reg CLK_7;
	
	assign CLK_7 = clk_p | clk_n;
	
	reg [W-1:0]counter_p, counter_n;
	reg clk_p,clk_n;
	
	always@(posedge CLK or negedge CLRn)
		if(!CLRn) begin
			counter_p <= 0;
			clk_p <= 0;
		end
		else begin
			if(counter_p < (MN-1))
				counter_p <= counter_p + 1;
			else
				counter_p <= 0;
				
			if(counter_p < (MN-1)/2)
				clk_p <= 1;
			else 
				clk_p <= 0;
		end

	always@(negedge CLK or negedge CLRn)
		if(!CLRn) begin
			counter_n <= 0;
			clk_n <= 0;
		end
		else if(counter_n < (MN-1)) begin
			counter_n <= counter_n + 1; 
			if(counter_n < (MN/2))
				clk_n <= 1;
			else 
				clk_n <= 0;
		end
		else
			counter_n <= 0;

endmodule		
		