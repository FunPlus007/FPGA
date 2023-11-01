//exp11 div even 12
//12->1100 

module div_even (
	input wire clk_in,
	input wire rst,

	output reg clk_out
);
	parameter cnt_bits = 4 - 1;
	parameter cnt_max = 12/2 - 1;
	reg [cnt_bits : 0] cnt;

	always@(posedge clk_in or negedge rst) begin
		if(~rst) 
			cnt <= 0;
		else 
			cnt <= (cnt == cnt_max) ? 0 : cnt + 1'b1;
	end

	always @(posedge clk_in or negedge rst)  begin
		if(~rst)
			clk_out <= 0;
		else 
			clk_out <= (cnt == cnt_max) ? ~clk_out:clk_out;

	end
	
endmodule



