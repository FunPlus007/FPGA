//todo top 级联 adder_bcd 实现 0-999 bcd加法器
module adder_bcd_top(
    input wire [3:0] a_hundred,
    input wire [3:0] a_ten ,
    input wire [3:0] a_one,

    input wire [3:0] b_hundred,
    input wire [3:0] b_ten ,
    input wire [3:0] b_one,
    
    input wire cin,
    output wire [11:0] sum,
    output wire cout
);

wire cout_one,cout_ten;

adder_bcd inst_one(
    .a(a_one),
    .b(b_one),
    .cin(cin),
    .cout(cout_one),
    .sum(sum[3:0])
);

adder_bcd inst_ten (
    .a(a_ten),
    .b(b_ten),
    .cin(cout_one),
    .cout(cout_ten),
    .sum(sum[7:4])
);

adder_bcd inst_hunrderd(
    .a(a_hundred),
    .b(b_hundred),
    .cin(cout_ten),
    .cout(cout),
    .sum(sum[11:8])
);


endmodule
