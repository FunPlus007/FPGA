module adder(A, B, Cin, Sum, Co);
	input [3:0]A,B;
	output [3:0]Sum;
	input Cin;
	output Co;
	
	//reg [3:0]Sum;
	//reg Co;
	// reg [4:0]Temp;
	
	assign {Co, Sum} = (A + B + Cin) > 9 ?
									A + B + Cin + 6: A + B + Cin;
									
/*		
	always@(A or B or Cin) begin   /// *
		// Temp <= A + B + Cin;
		
		if((A + B + Cin) > 9)
			{Co, Sum} <= A + B + Cin + 6;
		else
			{Co, Sum} = A + B + Cin;
	end
	
//	always@(A or B or Cin) begin   /// *
//		Temp <= A + B + Cin;
//		
//		if(Temp > 9)
//			{Co, Sum} <= Temp + 6;
//		else
//			{Co, Sum} = Temp;
//	end
//	
	
	
	
//	wire [4:0]Temp;
//
//	assign Temp = A + B + Cin;
//	
//	assign {Co, Sum} = (Temp  > 9) ? (Temp + 6) :  Temp ;
	
	
//	
//	if (Sum < 4'b1001) begin
//		assign Sum;
//		assign Co = 4'b0000;
//	end
//	else begin
//		assign Sum += 4'b0110;
//		assign Co += 4'b0001;
//	end
	*/	 
	
endmodule
