module D_latch(D,Q,LE,OEn);
	input D,LE,OEn;
	output Q;
	
	assign Q = !OEn ? 1'bz : (LE ? D : Q); 
	
	
//	
//	always@(D,LE,OEn)
//		if(!OEn)
//			Q <= 1'bz;
//		else
//			if(LE)
//				Q <= D;
//	//		else
//	//			Q <= Q;
endmodule
