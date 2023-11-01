// exp11 偶数分频器 12分频
// 位数 12
// module  div_even  #
// (parameter div_num = 12) // 分频系数
// (
//     input wire CLK,
//     input wire RSTn,

//     output reg CLK_div
// );
// parameter cnt_bits = $clog2(div_num) - 1;
// parameter cnt_max = div_num/2 - 1;

// // $display ("cnt_bits : %d , cnt_max : %d\r\n",cnt_bits, cnt_max);

// reg [cnt_bits : 0] cnt;

// always @(posedge CLK or negedge RSTn) begin
//     if(~RSTn)
// 		cnt <= 0;
// 	else
// 		cnt <= (cnt == cnt_max) ?  0 : cnt + 1'b1 ;
	
// end

// always @(posedge CLK or negedge RSTn) begin
// 	if(~RSTn)
// 		CLK_div <= 0;
// 	else
// 		CLK_div <= (cnt == cnt_max) ? ~CLK_div : CLK_div;
// end

// endmodule


//refence 
module div_even #
(	parameter DIV_NUM = 8	)	// 这里设置了可调整的分频系数
(	input		clk_in	,
	input		rst_n	,

	output reg	clk_out
);

// parameter CNT_BITS	= $clog2(DIV_NUM) - 1	;	// 求分频系数相应计数器的位数，$clog2(N)是系统函数，表示对N求2的对数
parameter CNT_BITS	= 3 - 1	;
parameter CNT_MAX	= (DIV_NUM >> 1) - 1	;	// 设置计数器的最大值，即 N/2-1

reg	[CNT_BITS: 0]	cnt	;

always @ (posedge clk_in or negedge rst_n) begin
	if (~rst_n) 
		cnt	<= 0;
	else
		cnt <= (cnt == CNT_MAX)? 0: (cnt + 1'b1)	;
end

always @ (posedge clk_in or negedge rst_n) begin
	if (~rst_n)
		clk_out	<= 0	;
	else
		clk_out	<= (cnt == CNT_MAX)? ~clk_out: clk_out	;	// 每当计数器计到最大值时输出时钟翻转一次
end

endmodule
