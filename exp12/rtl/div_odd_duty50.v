//exp12 div odd 
//奇数分频器  15奇数分频 15 -> 1111  50%占空比

// TODO: 50% duty
module div_odd_duty50 (
    input wire clk_in,
    input wire rst,

    output wire clk_out
);

parameter cnt_bits = 4 - 1;
parameter cnt_max = 15 - 1;
reg [cnt_bits : 0] cnt_r,cnt_f;
reg clk_r,clk_f;


// -> posedge clk
always @(posedge clk_in or negedge rst) begin
    if(~rst) 
        cnt_r <= 0; 
    else 
        cnt_r <= (cnt_r == cnt_max) ? 0 : (cnt_r + 1'b1);
    
end

always @(posedge clk_in or negedge rst) begin
    if(~rst) 
        clk_r <= 0; 
    else 
        clk_r <= ((cnt_r == cnt_max) || (cnt_r == cnt_max/2)) ? ~clk_r : clk_r;
end

// -> negedge clk
always @(negedge clk_in or negedge rst) begin
    if(~rst) 
        cnt_f <= 0; 
    else 
        cnt_f <= (cnt_f == cnt_max) ? 0 : (cnt_f + 1'b1);
end

always @(negedge clk_in or negedge rst) begin
    if(~rst) 
        clk_f <= 0; 
    else 
        clk_f <= ((cnt_f == cnt_max) || (cnt_f == cnt_max/2)) ? ~clk_f : clk_f;
end

assign clk_out = clk_r | clk_f;

endmodule