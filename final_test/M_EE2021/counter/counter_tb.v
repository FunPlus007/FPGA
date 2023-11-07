`timescale 1ns/1ns
module CNT_tb;
	reg clk,clr_n;
	wire [3:0]Q;

///   counter(CLK,CLR_n,Q);
counter U1(
	.CLK(clk),
	.CLR_n(clr_n),
	.Q(Q)
);

initial begin
	clk = 0;
	clr_n = 0;
	#100 clr_n =1;
	#1000 $stop;
end

always #20 clk = ~clk;

initial begin
	$monitor("CLK=%d    CLR=%d     Q=%d",clk,clr_n,Q);
end
endmodule



