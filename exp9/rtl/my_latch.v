// latch 锁存器
module  my_latch (
    input wire EN ,
    input wire D ,

    output reg Q
);

always @(EN or D) begin
    if (EN) begin
        Q = D;    
    end
    
end

endmodule