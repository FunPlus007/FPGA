// 给一个参数N ，设计任意N分频系数的奇数分屏器 duty 50%
module div_odd (
    input wire clk_in,
    input wire rst,
    //input reg n,        //分配系数

    output wire clk_out
);

// initialization 
parameter n = 15;
parameter cnt_bits = $clog2(n);
// parameter cnt_bits = 3;
parameter cnt_max = n - 1;
reg [cnt_bits : 0] cnt_pos,cnt_neg;
reg clk_pos,clk_neg;

//-> posedge clk
always @(posedge clk_in or negedge rst) begin
    if(~rst) begin
        cnt_pos <= 0;
    end
    else begin
        cnt_pos <= (cnt_pos == cnt_max) ? 0 : cnt_pos + 1'b1;
    end
end

always @(posedge clk_in or negedge rst ) begin
    if(~rst) begin
        clk_pos <= 0;
    end 
    else begin
        clk_pos <= (cnt_pos == cnt_max || cnt_pos == cnt_max / 2) ? ~clk_pos : clk_pos;
    end

end

//-> negedge clk
always @(negedge clk_in or negedge rst) begin
    if(~rst) begin
        cnt_neg <= 0;
    end
    else begin
        cnt_neg <= (cnt_neg == cnt_max) ? 0 : cnt_neg + 1'b1;
    end
end

always @(negedge clk_in or negedge rst ) begin
    if(~rst) begin
        clk_neg <= 0;
    end 
    else begin
        clk_neg <= (cnt_neg == cnt_max || cnt_neg == cnt_max / 2) ? ~clk_neg : clk_neg;
    end
end

assign clk_out = clk_neg | clk_pos;


endmodule
