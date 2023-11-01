// 实验7 八选一数据选择器

// 连续赋值 assign
module MUX81(
    input [7:0] IN , 
    input [2:0] SEL ,
    output wire OUT
);

assign OUT =(SEL[2:0] == 3'b000) ? IN[0] :
            (SEL[2:0] == 3'b001) ? IN[1] :
            (SEL[2:0] == 3'b010) ? IN[2] :
            (SEL[2:0] == 3'b011) ? IN[3] :
            (SEL[2:0] == 3'b100) ? IN[4] :
            (SEL[2:0] == 3'b101) ? IN[5] :
            (SEL[2:0] == 3'b110) ? IN[6] :
            (SEL[2:0] == 3'b111) ? IN[7] : 1'bx;

endmodule


// 过程赋值 case语句
// module MUX81(
//     input [7:0] IN, 
//     input [2:0] SEL,
//     output reg OUT
// );

// always @(*)
// begin
//     case (SEL)
//         3'b000: OUT = IN[0];
//         3'b001: OUT = IN[1];
//         3'b010: OUT = IN[2];
//         3'b011: OUT = IN[3];
//         3'b100: OUT = IN[4];
//         3'b101: OUT = IN[5];
//         3'b110: OUT = IN[6];
//         3'b111: OUT = IN[7];
//         default: OUT = 1'bx; 
//     endcase
// end

// endmodule
