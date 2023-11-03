//TODO seller

// a==1 -> 0.5￥ | b==1 ->1￥
// sell_flag | change_flag
// 1.5 -> sell_flag == 1
module  fsm_sell (
    input wire clk,
    input wire rst,
    input wire a_point5,
    input wire b_1,
    output reg sell_flag,
    output reg change_flag
);
    reg [2:0] state;
    //parameter IDEL = 3b'000;
    parameter S1 = 3b'001; //IDEL
    parameter S2 = 3b'010; //get0.5
    parameter S3 = 3b'100; //get1.0


    always @(posedge clk or negedge rst) begin
        if(~rst) begin
            state = S1;
            sell_flag = 0;
            change_flag = 0;
        end
        else begin
            case (state) 
                S1 : 
                    if(a_point5 == 1 && b_1 == 0) begin
                        state = S2;
                        sell_flag = 0;
                        change_flag = 0;
                    end
                    else if (a_point5 == 0 && b_1 == 1) begin
                        state = S3;
                        sell_flag = 0;
                        change_flag = 0;
                    end
                    else if (a_point5 == 0 && b_1 == 0) begin
                        state = S1;
                        sell_flag = 0;
                        change_flag = 0;
                    end
                S2: if(a_point5 == 0 && b_1 == 1 ) begin
                        state = S1;
                        sell_flag = 1;
                        change_flag = 0;
                    end
                    else if(a_point5 == 1 && b_1 == 0 ) begin
                        state = S3;
                        sell_flag = 0;
                        change_flag = 0;
                    end
                    eles if (a_point5 == 0 && b_1 == 0) begin
                        state = S2;
                        sell_flag = 0;
                        change_flag = 0;
                    end
                S3: if(a_point5 == 1 && b_1 == 0) begin
                        state = S1;
                        sell_flag = 1;
                        change_flag = 0;
                    end
                    else if (a_point5 == 0 && b_1 == 1) begin
                        state = S1;
                        sell_flag  = 1;
                        change_flag = 1;
                    end
                    else if(a_point5 == 0 && b_1 ==0) begin
                        state = S3;
                        sell_flag = 0;
                        change_flag = 0;
                    end
                default : begin
                    state = S1;
                    sell_flag = 0;
                    change_flag = 0;
                end
            endcase
        end 
    end

endmodule