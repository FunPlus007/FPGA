// todo: testbench of adder_bcd_top

//!!! 所有的inst输入信号都需要赋初值
`timescale 1ns/1ns
module tb_adder_bcd ;
    reg [3:0] a_hundred;
    reg [3:0] a_ten;
    reg [3:0] a_one;

    reg [3:0] b_hundred;
    reg [3:0] b_ten;
    reg [3:0] b_one;

    reg cin;

    wire [11:0] sum;
    wire cout;

    adder_bcd_top inst1(
        .a_hundred(a_hundred),
        .a_ten(a_ten),
        .a_one(a_one),

        .b_hundred(b_hundred),
        .b_ten(b_ten),
        .b_one(b_one),

        .cin(cin),
        .cout(cout),
        .sum(sum)
    );
    integer  i,j,k;
    initial begin
        //!!! 初始化
        a_hundred = 0;
        a_ten = 0;
        a_one = 0;
        b_hundred = 0;
        b_ten = 0;
        b_one = 0;
        cin = 0;

        a_hundred = 9;
        a_ten = 9;
        a_one = 9;

        b_hundred = 1;
        b_ten = 2;
        b_one = 3;

        #100;
        $display("%d%d%d%d",cout,sum[11:8],sum[7:4],sum[3:0]);

        // for ( i = 0; i < 10; i = i+1) begin
        //     for (j = 0;j < 10; j = j+1) begin
        //         for(k = 0; k<10; k = k+1) begin
        //                 #10;
        //                 $display("%d%d%d + %d%d%d = %d|%d%d%d",a_hundred,a_ten,a_one,b_hundred,b_ten,b_one,cout,sum[11:8],sum[7:4],sum[3:0]);

        //                 a_one = (k==9)?0:a_one + 1;
        //                 b_one = (k==9)?0:b_one + 1;
        //             end
        //             a_ten = (j==9)?0:a_ten + 1;
        //             b_ten = (j==9)?0:b_ten + 1;
        //         end
        //         a_hundred = (i==9)?0:a_hundred + 1;
        //         b_hundred = (i==9)?0:b_hundred + 1;
        //     end

            $stop();
        end

endmodule