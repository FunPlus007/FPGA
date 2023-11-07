module Redu_operator(IN,RedAND,RedOR,RedXOR);
	input [7:0]IN;
	output RedAND,RedOR,RedXOR;
	
	assign RedAND = & IN;
	assign RedOR = | IN;
	assign RedXOR = ^ IN;
	
endmodule
