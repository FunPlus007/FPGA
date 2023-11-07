module top_entity(A,B,S,C);
	input [3:0]A,B;
	output [3:0]S;
	output C;
	
	defparam U1.N = 4;
	
	wire [3:0]A1;
	
	
	assign A1 = A;
	
//	adder U1(A,B,S,C);

	adder #(.N(4)) U1(.a(A1),
							.b(B),
							.s(S),
							.c(C)				
							);
				
endmodule
