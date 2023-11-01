//实验6 BCD码加法器

// assign 连续赋值 
module BCDadder (
    input [3:0]A,B,
    input Cin,
    output wire [3:0] Sum,
    output wire Co
	);

    wire [4:0] temp;
    
    assign temp = A + B + Cin;
	assign Sum = (temp > 4'd9) ? temp - 4'd10 : temp;
	assign Co =  (temp > 4'd9) ? 1 : 0;

endmodule


// always 过程赋值
// module BCDadder(
// 	input[3:0] A, B,
// 	input Cin, 

// 	output reg [3:0] Sum,
// 	output reg Co
// 	);

// 	reg[4:0] temp;	

// 	always @(A, B, Cin) begin
// 		temp = A + B + Cin;
// 		Sum = (temp > 4'd9) ? temp - 4'd10 : temp;
// 		Co = (temp > 4'd9) ? 1 : 0;
// 	end

// endmodule
