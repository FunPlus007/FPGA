module counter(CLK,CLR_n,Q);
  input CLK,CLR_n;
  output [3:0]Q;
  reg [3:0]Q;
  always @(posedge CLK or negedge CLR_n)
	if (~CLR_n)
		Q <= 4'b0000;
	else
		Q <= Q + 4'b0001;  
endmodule