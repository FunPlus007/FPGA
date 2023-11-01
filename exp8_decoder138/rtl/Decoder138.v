//实验8 3-8译码器

// 连续赋值 assign 
module Decoder138(
    input C, B, A, G1, G2An, G2Bn,
    output [7:0] Y
);

    assign Y[0] = ~(G1 & ~G2An & ~G2Bn & ~C & ~B & ~A);
    assign Y[1] = ~(G1 & ~G2An & ~G2Bn & ~C & ~B & A);
    assign Y[2] = ~(G1 & ~G2An & ~G2Bn & ~C & B & ~A);
    assign Y[3] = ~(G1 & ~G2An & ~G2Bn & ~C & B & A);
    assign Y[4] = ~(G1 & ~G2An & ~G2Bn & C & ~B & ~A);
    assign Y[5] = ~(G1 & ~G2An & ~G2Bn & C & ~B & A);
    assign Y[6] = ~(G1 & ~G2An & ~G2Bn & C & B & ~A);
    assign Y[7] = ~(G1 & ~G2An & ~G2Bn & C & B & A);

endmodule

// 过程赋值 case 语句
// module Decoder138(C,B,A,G1,G2An,G2Bn,Y);
// 	input C,B,A,G1,G2An,G2Bn;
// 	output reg [7:0]Y;

//     always@(*)
//         begin
//         if({G1,G2An,G2Bn}==3'b100)
//                 case({C,B,A})
//                 3'b000:Y=8'b1111_1110;
//                 3'b001:Y=8'b1111_1101;
//                 3'b010:Y=8'b1111_1011;
//                 3'b011:Y=8'b1111_0111;
//                 3'b100:Y=8'b1110_1111;
//                 3'b101:Y=8'b1101_1111;
//                 3'b110:Y=8'b1011_1111;
//                 3'b111:Y=8'b0111_1111;
//                 endcase
//         else 
//             Y=8'b11111111;
//         end
// endmodule


// 过程赋值 if-else 语句
// module Decoder138(C, B, A, G1, G2An, G2Bn, Y);
//     input C, B, A, G1, G2An, G2Bn;
//     output reg [7:0] Y;

//     always @(*)
//     begin
//         if ({G1, G2An, G2Bn} == 3'b100)
//         begin
//             if ({C, B, A} == 3'b000)
//                 Y = 8'b1111_1110;
//             else if ({C, B, A} == 3'b001)
//                 Y = 8'b1111_1101;
//             else if ({C, B, A} == 3'b010)
//                 Y = 8'b1111_1011;
//             else if ({C, B, A} == 3'b011)
//                 Y = 8'b1111_0111;
//             else if ({C, B, A} == 3'b100)
//                 Y = 8'b1110_1111;
//             else if ({C, B, A} == 3'b101)
//                 Y = 8'b1101_1111;
//             else if ({C, B, A} == 3'b110)
//                 Y = 8'b1011_1111;
//             else if ({C, B, A} == 3'b111)
//                 Y = 8'b0111_1111;
//             else
//                 Y = 8'b11111111;
//         end
//         else
//             Y = 8'b11111111;
//     end
// endmodule
