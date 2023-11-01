//实验5 4bit加法器
module adder (
    input  [3:0] A ,
    input  [3:0] B ,
    input Ci , 

    output  [3:0] Sum ,
    output Co );

    assign {Co,Sum} = A + B + Ci;
endmodule