//exp12 div odd 
//奇数分频器  15奇数分频 15-> 1111

// TODO : 7/15duty
module div_odd (
    input wire clk_in,
    input wire rst,

    output reg clk_out
);

parameter cnt_bits = 4 - 1;
parameter cnt_max = 15 - 1;
reg [cnt_bits:0] cnt;

always @(posedge clk_in or negedge rst) begin
    if(~rst) begin
        cnt <= 0 ;
    end
    else begin
        cnt <= (cnt == cnt_max) ? 0 :cnt + 1'b1; 
    end
end

always @(posedge clk_in or negedge rst) begin
    if(~rst) begin
        clk_out <= 0;
    end
    else begin
        clk_out <= (cnt == cnt_max || cnt == 7) ? ~ clk_out : clk_out;
    end
end


endmodule


