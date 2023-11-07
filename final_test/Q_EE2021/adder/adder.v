module adder(a,b,s,c);
	parameter N = 24;
	input [N-1:0]a,b;
	output reg [N-1:0]s;
	output c;
	reg c;
	
	always@(a, b)
		{c,s} <= a + b;
	
		
//	assign {c,s} = a + b;
	
endmodule
