//TODO : test bench FSM sequence detection 10010
`timescale  1ns/1ns

module tb_fsm_seq_det ;
    reg clk;
    reg data;
    reg rst;
    wire ans;

    fsm_seq_det inst1(
        .clk(clk),
        .rst(rst),
        .data(data),
        .ans(ans)
    );

    always #10 clk = ~clk;
    initial begin
        clk = 0;
        rst = 0;
        data = 0;
        #20;
	rst = 1;
        $display("--- sequence detection 10010 ---");
        $display ("case 1 :10010");
        data = 1;#20;
        data = 0;#20;
        data = 0;#20;
        data = 1;#20;
        data = 0;#20;
        $display("ans :%d",ans);
        $stop();
    end

endmodule




