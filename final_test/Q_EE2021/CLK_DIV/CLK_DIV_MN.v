module CLK_DIV_MN(CLK,CLRn,CLK_7);
	parameter M = 3, N = 4;
	parameter W = 4;
	input CLK,CLRn;
	output CLK_7;
	reg CLK_7;
	
	reg [W-1:0]counter;

//	assign CLK_7 = (counter < M) ? 1 : 0;
	
	always@(posedge CLK or negedge CLRn)
		if(!CLRn) begin
			counter <= 0;
		end
		else if(counter < (M + N -1)) begin
			counter  <= counter + 1; 
		end
		else begin
			counter <= 0;
		end

	always@(counter)			///(posedge CLK)				///???
		if(counter < M)
			CLK_7 <= 1;
		else
			CLK_7 <= 0;

	
//	always@(posedge CLK or negedge CLRn)
//		if(!CLRn) begin
//			counter <= 0;
//			CLK_7 <= 0;
//		end
//		else if(counter < (M + N -1)) begin
//			counter  <= counter + 1; 
//			if(counter < M)			////????
//				CLK_7 <= 1;
//			else
//				CLK_7 <= 0;
//		end
//		else begin
//			counter <= 0;
//			
//		end
endmodule	