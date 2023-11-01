// exp 10 mod 24 counter
// mod24 -> mod10
// mod10 示例化 BCD计数器
// modsim仿真

// 24 -> 0001 1000 | 23 -> 0001 0111
// todo: 1. mod24
module exp10_counter(
    input wire CLK,
    input wire Loadn,// loda data enable
    input wire CLRn, //clear
    
    output reg [7:0] D, //load data
    output reg [7:0] Q, //counter
    output reg Co
);

always @(posedge CLK or negedge CLRn or negedge Loadn ) begin
    if (~CLRn)
        Q <= 0;
    else if (~Loadn)
        Q <= D;
    else begin
        Co = (Q == 5'b1_0111) ? 1 : 0;
        Q <= (Q == 5'b1_0111) ? 0 : (Q + 1'b1);
    end

end
endmodule

//----------------------------------------------------------------
// todo: 2. mod10 
// 10-> 1010 | 9 -> 1001
// module exp10_counter(
//     input wire CLK,
//     input wire Loadn,// loda data enable
//     input wire CLRn, //clear
//     output reg [7:0] D, //load data
//     output reg [7:0] Q, //counter
//     output reg Co
// );

// always @(posedge CLK or negedge CLRn or negedge Loadn ) begin
//     if (~CLRn)
//         Q <= 0;
//     else if (~Loadn)
//         Q <= D;
//     else begin
//         Co = (Q == 5'b0_1001) ? 1 : 0;
//         Q <= (Q == 5'b0_1001) ? 0 : (Q + 1'b1);
//     end

// end
// endmodule
