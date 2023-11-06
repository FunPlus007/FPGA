//TODO testbench fsm seller
// ----------------------------------------------------------------
// a==1 -> 0.5￥ | b==1 ->1￥
// sell_flag | change_flag
// 1.5 -> sell_flag == 1 
// case get aaa | get ab | get bb | get ba
//  ----------------------------------------------------------------

`timescale 1ns/1ns
module tb_fsm_sell ;

   reg clk;
    reg rst;
    reg a_point5;
    reg b_1;
    wire sell_flag;
    wire change_flag;

    fsm_sell ints1(
        .clk(clk),
        .rst(rst),
        .a_point5(a_point5),
        .b_1(b_1),
        .sell_flag(sell_flag),
        .change_flag(change_flag)
    );

    always #10  clk = ~clk;
    initial begin
        clk = 0;
        rst = 0;
        # 10;
        rst = 1;
        $display("----test bench of fsm_sell---");

        //case 1 aaa
        a_point5  = 1;
        b_1 = 0;
        # 60;
        a_point5 = 0;
        $display("case get aaa : sell %d  change %d",sell_flag,change_flag);
        #20;

        //case 2 ab
        a_point5 = 1;
        # 20;
        a_point5 = 0;
        b_1 = 1;
        # 20;
        b_1 = 0;
        $display("case get ad : sell %d change %d",sell_flag,change_flag);
        #20;

        //case 3 bb 
        b_1  = 1;
        # 40;
        b_1 = 0;
        $display("case get bb : sell %d change %d",sell_flag,change_flag);
        # 20;
        $stop();
    end


endmodule