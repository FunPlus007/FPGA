// D filp flop
// D 触发器 置数SET 清零CLRn
module my_dff (
    input wire CLK ,
    input wire D,
    input wire SET,
    input wire CLRn,

    output reg Q
);
// always @(posedge CLK) begin
//     if(!CLRn)
//         Q = 0;
//     else
//         if(SET)z
//             Q = 1;
//         else 
//             Q = D;
// end

always @(posedge CLK or negedge CLRn or posedge SET) begin
    if(!CLRn)
        Q = 0;
    else if (SET)
        Q = 1;
    else 
        Q = D;


end


endmodule
