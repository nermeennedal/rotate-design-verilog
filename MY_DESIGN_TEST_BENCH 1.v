`timescale 1ns/100ps 
module MY_DESIGN_TEST_BENCH;
 reg [31:0] A;
 reg [31:0] B;
 reg [4:0] k;
 reg right ;
 wire [31:0] F;
 
 // Mydesign one round in hardware
MY_DESIGN_ROTATE mydesign (
 .A (A),
 .B (B),
 .K (k),
 .right (right), 
 .F (F)
 );
 initial begin
 $monitor ("A=%h B=%h k=%0d right=%b F=%x", A, B, k, right, F);
 A= 32'hFFFF_0000; B=32'h0000_FFFF; k=1 ; right=1; #10;
 A= 32'hFFFF_0000; B=32'h0000_FFFF; k=1 ; right=0; #10;
 A= 32'hFFFF_0000; B=32'h0000_FFFF; k=2 ; right=1; #10;
 A= 32'hFFFF_0000; B=32'h0000_FFFF; k=2 ; right=0; #10;
 A= 32'hFFFF_0000; B=32'h0000_FFFF; k=31 ; right=1; #10;
 A= 32'hFFFF_0000; B=32'h0000_FFFF; k=31 ; right=0; #10;
 A= 32'h0001_1000; B=32'h0010_0100; k=4 ; right=1; #10;
 A= 32'h0001_1000; B=32'h0010_0100; k=4 ; right=0; #10;
 
 $stop;
 end 
 
endmodule
