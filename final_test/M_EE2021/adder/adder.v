module adder(A,B,C,Sum);
	input A,B;
	output C,Sum;
	assign {C,Sum} = A + B;
endmodule
