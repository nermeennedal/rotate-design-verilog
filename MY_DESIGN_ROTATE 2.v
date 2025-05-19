module MY_DESIGN_ROTATE
(
input  [31:0] A,
input  [31:0] B,
input  [4:0] K,
input right ,
output [31:0] F
);
	reg [4:0]K_mod;
	wire [31:0] F1,F2,F3,F4,F5,preshift;
	
		XOR xor32(F1,A,B);

		always @(*) begin
			K_mod[4] = (~K[4] & ~right) | (K[4] & right); 
			K_mod[3] = (~K[3] & ~right) | (K[3] & right);
			K_mod[2] = (~K[2] & ~right) | (K[2] & right);
			K_mod[1] = (~K[1] & ~right) | (K[1] & right);
			K_mod[0] = (~K[0] & ~right) | (K[0] & right);
		end
		MUX mux_preshift(preshift,F1,~right,5'b00001);
		
		MUX mux1(F2,preshift,K_mod[4],5'b10000);
		MUX mux2(F3,F2,K_mod[3],5'b01000);
		MUX mux3(F4,F3,K_mod[2],5'b00100);
		MUX mux4(F5,F4,K_mod[1],5'b00010);
		MUX mux6(F,F5,K_mod[0],5'b00001);
endmodule