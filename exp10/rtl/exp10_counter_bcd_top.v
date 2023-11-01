//todo:3 bcd counter with exp10_counter (mod10)
module exp10_counter_bcd_top(
    input wire CLK,
    input wire Load,
    input wire CLR,

    output wire [3:0] thousands,
    output wire [3:0] hundreds,
    output wire [3:0] tens,
    output wire [3:0] ones ,
    output wire Cout
);

wire [3:0] thousands_D;
wire [3:0] hundreds_D;
wire [3:0] tens_D;
wire [3:0] ones_D;

wire thousands_Co;
wire hundreds_Co;
wire tens_Co;

exp10_counter exp10_ones (
    .CLK(CLK),
    .Loadn(Load),
    .CLRn(CLR),
    .D(ones_D),
    .Q(ones),
    .Co(ones_Co)
);

exp10_counter exp10_tens (
    .CLK(ones_Co),
    .Loadn(Load),
    .CLRn(CLR),
    .D(tens_D),
    .Q(tens),
    .Co(tens_Co)
);

exp10_counter exp10_hundreds (
    .CLK(tens_Co),
    .Loadn(Load),
    .CLRn(CLR),
    .D(hundreds_D),
    .Q(hundreds),
    .Co(hundreds_Co)
);

exp10_counter exp10_thousands (
    .CLK(hundreds_Co),
    .Loadn(Load),
    .CLRn(CLR),
    .D(thousands_D),
    .Q(thousands),
    .Co(thousands_Co)
);

assign Cout = thousands_Co;

endmodule
