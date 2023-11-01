//实验6 top
//TODO: 3位BCD加法器 个十百 进位千
module BCDadder_top(
    input [11:0] A,
    input [11:0] B,
    input wire Cin,

    output [11:0] Sum,
    output wire Cout
);

wire  Co1,Co2;

BCDadder bcd_inst1 (
    .A (A[3:0]),
    .B (B[3:0]),
    .Cin (Cin),

    .Co (Co1),
    .Sum (Sum[3:0])
);


BCDadder bcd_inst2 (
    .A (A[7:4]),
    .B (B[7:4]),
    .Cin (Co1),

    .Co (Co2),
    .Sum (Sum[7:4])
);


BCDadder bcd_inst3 (
    .A (A[11:8]),
    .B (B[11:8]),
    .Cin (Co2),

    .Co (Cout),
    .Sum (Sum[11:8])
);



endmodule
