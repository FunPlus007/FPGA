// test bench of div_odd N div
`timescale 1ns/1ns
module tb_div_odd;

    reg clk_in;
    reg rst;

    wire clk_out;


    div_odd ints2 (
        .clk_in(clk_in),
        .rst(rst),
        .clk_out(clk_out)
    );

    always  begin
        #10 clk_in = ~clk_in;
    end

    initial begin
        $timeformat(-9, 2, " ns", 6);
        $monitor("time :%t : clk_out:%d",$time,clk_out);
        clk_in = 0;
        rst = 0;
        #10 ;
	    rst=1;
        clk_in = 1;
        # 1010;
    
        $stop();
    end

endmodule
