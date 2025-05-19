module increment1(output [4:0] S,input  [4:0] Y);
	wire [5:0] C;
	assign C[0] = 1'b1;
	
	assign S[0] = ~Y[0];
	assign C[1] =  Y[0];

	assign S[1] = (~Y[1] & C[1])| (Y[1] &~C[1]);
	assign C[2] = ( Y[1] & C[1]);
	
	assign S[2] = (~Y[2] & C[2])| (Y[2] &~C[2]);
	assign C[3] = ( Y[2] & C[2]);

	assign S[3] = (~Y[3] & C[3])| (Y[3] &~C[3]);
	assign C[4] = ( Y[3] & C[3]);

	assign S[4] = (~Y[4] & C[4])| (Y[4] &~C[4]);
	assign C[5] = ( Y[4] & C[4]);
	
endmodule
module MUX (
    output  [31:0] F,
    input  [31:0] N,
    input K,// K select mux 2_1
    input [4:0] B // use B to select number of rotate in each stage
);
	wire [4:0] A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31;
	
	 
	assign F[0]  = (N[0]  & (~K)) | (N[B] & K);
 	
	increment1 G1(A1,B);
	assign F[1]  = (N[1]  & (~K)) | (N[A1] & K);
 
	increment1 G2(A2,A1);
	assign F[2]  = (N[2]  & (~K)) | (N[A2] & K);
 
	increment1 G3(A3,A2);
	assign F[3]  = (N[3]  & (~K)) | (N[A3] & K);
 
	increment1 G4(A4,A3);
	assign F[4]  = (N[4]  & (~K)) | (N[A4] & K);
 
	increment1 G5(A5,A4);
	assign F[5]  = (N[5]  & (~K)) | (N[A5] & K);
 
	increment1 G6(A6,A5);
	assign F[6]  = (N[6]  & (~K)) | (N[A6] & K);
 
	increment1 G7(A7,A6);
	assign F[7]  = (N[7]  & (~K)) | (N[A7] & K);
	 
	increment1 G8(A8,A7);
	assign F[8]  = (N[8]  & (~K)) | (N[A8] & K);
 
	increment1 G9(A9,A8);
	assign F[9]  = (N[9]  & (~K)) | (N[A9] & K);
 
	increment1 G10(A10,A9);
	assign F[10] = (N[10] & (~K)) | (N[A10] & K);
 
	increment1 G11(A11,A10);
	assign F[11] = (N[11] & (~K)) | (N[A11] & K);
 
	increment1 G12(A12,A11);
	assign F[12] = (N[12] & (~K)) | (N[A12] & K);
 
	increment1 G13(A13,A12);
	assign F[13] = (N[13] & (~K)) | (N[A13] & K);
 
	increment1 G14(A14,A13);
	assign F[14] = (N[14] & (~K)) | (N[A14] & K);
 
	increment1 G15(A15,A14);
	assign F[15] = (N[15] & (~K)) | (N[A15] & K);
 
	increment1 G16(A16,A15);
	assign F[16] = (N[16] & (~K)) | (N[A16] & K);
 
	increment1 G17(A17,A16);
	assign F[17] = (N[17] & (~K)) | (N[A17] & K);
	 
	increment1 G18(A18,A17);
	assign F[18] = (N[18] & (~K)) | (N[A18] & K);
 
	increment1 G19(A19,A18);
	assign F[19] = (N[19] & (~K)) | (N[A19] & K);
	 
	increment1 G20(A20,A19);
	assign F[20] = (N[20] & (~K)) | (N[A20] & K);
	 
	increment1 G21(A21,A20);
	assign F[21] = (N[21] & (~K)) | (N[A21] & K);
 
	increment1 G22(A22,A21);
	assign F[22] = (N[22] & (~K)) | (N[A22] & K);
 
	increment1 G23(A23,A22);
	assign F[23] = (N[23] & (~K)) | (N[A23] & K);
 
	increment1 G24(A24,A23);
	assign F[24] = (N[24] & (~K)) | (N[A24] & K);
 
	increment1 G25(A25,A24);
	assign F[25] = (N[25] & (~K)) | (N[A25] & K);
 
	increment1 G26(A26,A25);
	assign F[26] = (N[26] & (~K)) | (N[A26] & K);
 
	increment1 G27(A27,A26);
	assign F[27] = (N[27] & (~K)) | (N[A27] & K);
 
	increment1 G28(A28,A27);
	assign F[28] = (N[28] & (~K)) | (N[A28] & K);
 
	increment1 G29(A29,A28);
	assign F[29] = (N[29] & (~K)) | (N[A29] & K);
 
	increment1 G30(A30,A29);
	assign F[30] = (N[30] & (~K)) | (N[A30] & K);
 
	increment1 G31(A31,A30);
	assign F[31] = (N[31] & (~K)) | (N[A31] & K);
 
endmodule