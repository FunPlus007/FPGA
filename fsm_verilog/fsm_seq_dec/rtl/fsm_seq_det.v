//TODO  FSM sequence detection 10010

module fsm_seq_det (
    input wire data,
    input  wire clk,
    input  wire rst,
    output wire ans 
);

// state init
parameter IDEL = 5'b0;
parameter A = 5'b1;
parameter B = 5'b10;
parameter C = 5'b100;
parameter D = 5'b1001;
parameter E = 5'b10010;

reg [4:0] state;

assign ans = (state == E) ? 1:0;

always @(posedge clk or negedge rst) begin
    if(~rst)
        state = IDEL;
    else begin
        case (state) // sqe 10010
            IDEL : state = (data == 1) ? A:IDEL;
            A : state = (data == 0) ? B : A;
            B : state = (data == 0) ? C : B;
            C : state = (data == 1) ? D : IDEL;
            D : state = (data == 0) ? E : A;
            E : state = (data == 1) ? A : C;
            default state = IDEL;
        endcase
    end
end

endmodule


// TODO cur_sta / next_sta