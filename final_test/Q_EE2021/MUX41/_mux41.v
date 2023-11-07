module _mux41(IN,SEL,OUT);
	input [3:0]IN;
	input [1:0]SEL;
	output OUT;
	reg OUT;
	
	always@(IN or SEL)
//		OUT = SEL[0] ? (SEL[1] ? IN[3]:IN[1]) :
//							(SEL[1] ? IN[2]:IN[0]);
		case(SEL)
			2'b00: OUT = IN[0];
			2'b01: OUT = IN[1];
			2'b10: OUT = IN[2];
			2'b11: OUT = IN[2'b11];
			default: OUT = 1'bZ;
		endcase



//		if(SEL[0])
//			if(SEL[1])
//				OUT = IN[3];
//			else
//				OUT = IN[1];
//		else
//			if(SEL[1])
//				OUT = IN[2];
//			else
//				OUT = IN[0];
		
		
		
		
	
//	always@(IN or SEL)
//		OUT = SEL[0] ? (SEL[1] ? IN[3]:IN[1]) :
//								 (SEL[1] ? IN[2]:IN[0]);
//	
//	assign OUT = SEL[0] ? (SEL[1] ? IN[3]:IN[1]) :
//								 (SEL[1] ? IN[2]:IN[0]);
	
//	assign OUT = SEL[1] ? (SEL[0] ? IN[3]:IN[2]) :
//								 (SEL[0] ? IN[1]:IN[0]);
//	
//	assign OUT = ~SEL[1] ? (~SEL[0] ? IN[0]:IN[1]) :
//								  (~SEL[0] ? IN[2]:IN[3]);
	
//	assign OUT = 	(SEL == 2'b00) ? IN[0]:
//						(SEL == 2'b01) ? IN[1]:
//						(SEL == 2'b10) ? IN[2]:IN[3];
	
endmodule

	