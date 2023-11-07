module Decode138(A,B,C,G1,G2A_n,G2B_n,Y_n);
	input A,B,C,G1,G2A_n,G2B_n;
	output [7:0]Y_n;
	
	assign Y_n = ({G1,G2A_n,G2B_n} != 3'b100) ? 
							8'b1111_1111  :
							~(8'b0000_0001 << {C,B,A});
	
	
	
	
	
	
//	reg [7:0]Y_n;
//	
//	always@(A,B,C,G1,G2A_n,G2B_n)
//		if ({G1,G2A_n,G2B_n} != 3'b100)
//			Y_n = 8'b1111_1111;
//		else
//			Y_n = ~(8'b0000_0001 << {C,B,A});
	
	
	
	
//	always@(A,B,C,G1,G2A_n,G2B_n)
////		if(G1 == 1 && G2A_n == 0 && G2B_n == 0)
//		if ({G1,G2A_n,G2B_n} != 3'b100)
//			Y_n = 8'b1111_1111;
//		else
//			case({C,B,A})
//				3'b000: Y_n = 8'b1111_1110;
//				3'b001: Y_n = 8'b1111_1101;
//				.
//				.
//				.
//				3'b111: Y_n = 8'b0111_1111;
//			endcase

			
			
endmodule
