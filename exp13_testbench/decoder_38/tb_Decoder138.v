// TODO : testbench decoder138 
`timescale 1ns/1ns
module tb_Decoder138;
     reg C,B,A,G1,G2An,G2Bn;
     wire [7:0] Y;
    Decoder138 inst1(
        .A(A),
        .B(B),
        .C(C),
        .G1(G1),
        .G2An(G2An),
        .G2Bn(G2Bn),

        .Y(Y)
    );

    initial begin
	G1 = 1;
	G2An = 0;
	G2Bn = 0;
	#10;
        C = 0; B = 0; A = 0;
        $display("Y:%b",Y);
	#10; 
        C = 0; B = 0; A = 1;
        $display("Y:%b",Y);
	#10 ;
        C = 0; B = 1; A = 0;
        $display("Y:%b",Y);
	#10; 
        C = 0; B = 1; A = 1;
        $display("Y:%b",Y);
	#10; 
        C = 1; B = 0; A = 0;
        $display("Y:%b",Y);
	#10; 
        C = 1; B = 0; A = 1;
        $display("Y:%b",Y);
	#10; 
        C = 1; B = 1; A = 0;
        $display("Y:%b",Y);
	#10;
        C = 1; B = 1; A = 1;
        $display("Y:%b",Y);
	#10;
    end


endmodule