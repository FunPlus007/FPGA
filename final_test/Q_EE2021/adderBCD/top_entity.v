module top_entity(a,b,s,cin,co);
	input [7:0]a,b;
	output [7:0]s;
	input cin;
	output co;
	
	// gewei LSB
	adder U1(.A(a[3:0]), .B(b[3:0]), .Cin(cin), 
				.Sum(s[3:0]), .Co(C_tmp));	
	
	// shiwei MSB
	adder U2(.A(a[7:4]), .B(b[7:4]), .Cin(C_tmp), 
				.Sum(s[7:4]), .Co(co));
	endmodule
	