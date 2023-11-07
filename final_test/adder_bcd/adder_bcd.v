//todo 实现一位的BCD adder
//十位的bcd加法器 0-9 | 0000 - 1001
// assign 连续赋值
// module  adder_bcd (
//     input wire [3:0] a,
//     input wire [3:0] b,
//     input wire cin,

//     output wire [3:0] sum,
//     output wire  cout
// );

// wire [4:0] sum_temp;
// assign sum_temp = a + b + cin;

// assign sum = (sum_temp > 9) ? sum_temp - 10 : sum_temp;
// assign cout = (sum_temp > 9) ? 1 : 0;
// endmodule

//过程赋值
module adder_bcd (
    input wire [3:0] a,
    input wire [3:0] b,
    input wire cin,

    output reg [3:0] sum,
    output reg cout
);

reg [4:0] sum_temp;
always @(*) begin
    sum_temp  = a+b+cin;
    sum = (sum_temp > 9) ? sum_temp - 10 : sum_temp ;
    cout = (sum_temp > 9) ? 1 : 0;
end 


endmodule