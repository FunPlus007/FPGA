// 级联mod n counter 

// 10 * 6 mod60
module counter_top(
    input wire clk,
    input wire rst,
    output wire  [3:0] cnt_10,
    output wire [3:0] cnt_6,
    output reg  cout
);
wire cout_1,cout_2;

counter_mod_n #(.cnt_max(4'b1001)) counter_10(
    .clk(clk),
    .rst(rst),
    .cnt(cnt_10),
    .cout(cout_1)
);

counter_mod_n #(.cnt_max(4'b0101)) counter_6(
    .clk(cout_1),
    .rst(rst),
    .cnt(cnt_6),
    //.cout(cout_2)
);

//cout 输出有bug

// always @(posedge clk or negedge rst) begin
//     if(~rst) 
//         cout <= 0 ;
//     else begin
//         if(cout_2 == 1 ) 
//             cout = 1; 
//         else 
//             cout = 0;
//     end
// end




endmodule

