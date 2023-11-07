module counter_M60(CLK,CLRn,Q_L,Q_H);
	input CLK,CLRn;
	output [3:0]Q_L,Q_H;
	
	wire CLK_to_U1;
	
	defparam U_0.N = 10;
	defparam U_0.W = 4;
	counter_M_N U_0 (	.CLK(CLK),
							.Q(Q_L),
							.CLRn(CLRn),
							.Co(CLK_to_U1)
							);
							
	defparam U_1.N = 6;
	defparam U_1.W = 4;
	counter_M_N U_1 (	.CLK(CLK_to_U1),
							.Q(Q_H),
							.CLRn(CLRn),
							//.Co()
							);
endmodule
