//TODO: FSM counter 10

module fsm_counter (
    input wire clk,
    input wire rst,
    output wire [3:0] cnt,
    output reg cout
);
    //state init
    reg [3:0] state;

    parameter s0 = 4'b0000;
    parameter s1 = 4'b0001;
    parameter s2 = 4'b0010;
    parameter s3 = 4'b0011;
    parameter s4 = 4'b0100;
    parameter s5 = 4'b0101;
    parameter s6 = 4'b0110;
    parameter s7 = 4'b0111;
    parameter s8 = 4'b1000;
    parameter s9 = 4'b1001;

    always @(posedge clk or negedge rst) begin
        if(~rst)
            state = s0;
        else begin
            case (state)
            s0 : state = s1;
            s1 : state = s2;
            s2 : state = s3;
            s3 : state = s4;
            s4 : state = s5;
            s5 : state = s6;
            s7 : state = s8;
            s8 : state = s9;
            default : state = s0;
            endcase
        end
    end

    assign cnt = state;

    always@(posedge clk or negedge rst) begin
        if(~rst)
            cout = 0;
        else 
            if(state == s9)
                cout = 1;
            else 
                cout = 0;
    end
    
endmodule