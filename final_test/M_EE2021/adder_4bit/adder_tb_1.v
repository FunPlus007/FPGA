`timescale 1ns/1ns
module adder_t1;
	reg [3:0]a,b;
	wire c;
	wire [3:0]s;

adder U1(
	.A(a),
	.B(b),
	.C(c),
	.Sum(s)
	);

integer i,j;

initial begin
	a = 0; b = 0; 
end

initial begin
	for(i = 0; i < 16; i = i + 1)
		for(j = 0; j < 16; j = j + 1) begin
		# 100 a = i; b = j;
		end
	# 100 ;
end

initial begin
	$monitor("%d + %d = %d   %d", a,b,s,c);
end

endmodule

