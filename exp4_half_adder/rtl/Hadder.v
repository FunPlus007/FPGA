// 实验4 半加器
module Hadder (
    input wire A ,
    input wire B ,
    output wire Sum ,
    output wire C );

    assign {C,Sum} = A + B;
    

endmodule

