module adder(A,B,C,Sum);
	input [3:0]A,B;
	output C;
	output [3:0]Sum;
	assign {C,Sum} = A + B;
endmodule
