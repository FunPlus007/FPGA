// 实现任意 mod n 计数器
// @para cnt_bits 默认为3
// @para cnt_max 实例化需要赋值
module counter_mod_n #(parameter cnt_bits = 3 , parameter cnt_max = 15)(
    input wire clk,
    input wire rst,

    // load cnt data 
    // input wire load_n, // load data 
    // input wire [load_bits:0] load_data,

    output reg [cnt_bits:0] cnt, // TODO 如何将这个cnt的位数动态调整？ #(预声明parameter)
    output reg cout
);



always @(posedge clk or negedge rst) begin
    if(~rst) begin
        cnt <= 0;
    end 
    else begin
        cnt <= (cnt == cnt_max) ? 0 : cnt + 1'b1;
        cout <= (cnt == cnt_max) ? 1 : 0;
    end

end


// assign cout = (cnt == cnt_max) ? 1:0; //有bug 级联后第二个时钟不为clk，cout2 无法置低

endmodule 

