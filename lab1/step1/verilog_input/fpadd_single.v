`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTH
// 
// Design Name: 
// Module Name:   fpadd_single 
// Project Name: 32 bit Floating Point Unit - Add
// Target Devices: Zedboard
// Tool versions: Vivado 2020.2
//
// Description: 32-bit FP adder with a single pipeline stage (everything happens in one cycle)
//  The module does not check the input for subnormal and NaN numbers, 
//  and assumes that the two inputs are normal FP32 numbers with 0<exp<255.
//  We also assume that the output does not overflow or undeflow, so there is no need to check for these conditions.
//  An FP32 number has 1 sign bit, 8 exponent bits(biased by 127), and 23 mantissa bits.
//////////////////////////////////////////////////////////////////////////////////
module fpadd_single (input clk,
                     input reset,
                     input [31:0]reg_A, 
                     input [31:0]reg_B,  
		     		 output reg[31:0] out);

	reg [31:0] A, B;
	reg        S_A, S_B;
	reg  [4:0] N;
	reg  [7:0] EXP_A, EXP_B, diff, EXP_result, S_result;
	reg [22:0] Mantissa_A, Mantissa_B, Mantissa_shift_A, Mantissa_shift_B, Mantissa_result;
				     	
	// Register the two inputs, and use A and B in the combinational logic. 
	always @ (posedge clk or posedge reset) begin
		if (reset == 1'b1)
			out <= 32'b0;
		else begin
			A <= reg_A;
			B <= reg_B;
			out <= result;
		end
	end
		
	//Combinational Logic to (a) compare and adjust the exponents, 
	//                       (b) shift appropriately the mantissa if necessary, 
	//                       (c) add the two mantissas, and
	//                       (d) perform post-normalization. 
	//                           Make sure to check explicitly for zero output.

	//Seperate segments of FP number A and B.
	always @ (A or B) begin
		S_A = A[31];
		S_B = B[31];

		EXP_A = A[30:23];
		EXP_B = B[30:23];
		
		Mantissa_A = A[22:0];
		Mantissa_B = B[22:0];
	end

	//(a), (b): Adjust exponents and shift mantissas.
	always@ (EXP_A or EXP_B) begin
		if (EXP_A == EXP_B) begin 
			diff = 8'b0;

			Mantissa_shift_A = Mantissa_A;
			Mantissa_shift_B = Mantissa_B;

			EXP_result = EXP_A;
	    end
		else if (EXP_A > EXP_B) begin
			diff = EXP_A - EXP_B;

			Mantissa_shift_A = Mantissa_A;
			Mantissa_shift_B = Mantissa_B >> diff;

			EXP_result = EXP_A;
		end else begin
			diff = EXP_B - EXP_A;

			Mantissa_shift_A = Mantissa_A >> diff;
			Mantissa_shift_B = Mantissa_B;

			EXP_result = EXP_B;
		end
	end

	//(c): Add the two Mantissas and define sign of result.
	always @(S_A or S_B or Mantissa_shift_A or Mantissa_shift_B) begin
		if (S_A == S_B) begin
			S_result = S_A;

			Mantissa_result = Mantissa_shift_A + Mantissa_shift_B;
		end
		else if (Mantissa_shift_A > Mantissa_shift_B) begin
			S_result = S_A;

			Mantissa_result = Mantissa_shift_A - Mantissa_shift_B;
		end
		else begin
			S_result = S_B;

			Mantissa_result = Mantissa_shift_B - Mantissa_shift_A;
		end
	end

	//(d): Normalise final result.
	always @(Mantissa_result) begin
		casex (Mantissa_result)
			23'b1xxxxxxxxxxxxxxxxxxxxxx: N = 5'd0;
			23'b01xxxxxxxxxxxxxxxxxxxxx: N = 5'd1;
			23'b001xxxxxxxxxxxxxxxxxxxx: N = 5'd2;
			23'b0001xxxxxxxxxxxxxxxxxxx: N = 5'd3;
			23'b00001xxxxxxxxxxxxxxxxxx: N = 5'd4;
			23'b000001xxxxxxxxxxxxxxxxx: N = 5'd5;
			23'b0000001xxxxxxxxxxxxxxxx: N = 5'd6;
			23'b00000001xxxxxxxxxxxxxxx: N = 5'd7;
			23'b000000001xxxxxxxxxxxxxx: N = 5'd8;
			23'b0000000001xxxxxxxxxxxxx: N = 5'd9;
			23'b00000000001xxxxxxxxxxxx: N = 5'd10;
			23'b000000000001xxxxxxxxxxx: N = 5'd11;
			23'b0000000000001xxxxxxxxxx: N = 5'd12;
			23'b00000000000001xxxxxxxxx: N = 5'd13;
			23'b000000000000001xxxxxxxx: N = 5'd14;
			23'b0000000000000001xxxxxxx: N = 5'd15;
			23'b00000000000000001xxxxxx: N = 5'd16;
			23'b000000000000000001xxxxx: N = 5'd17;
			23'b0000000000000000001xxxx: N = 5'd18;
			23'b00000000000000000001xxx: N = 5'd19;
			23'b000000000000000000001xx: N = 5'd20;
			23'b0000000000000000000001x: N = 5'd21;
			23'b00000000000000000000001: N = 5'd22;
			default: N = 5'd0;
		endcase
	end

	assign result = {S_result, Mantissa_result << N, EXP_result - N};
endmodule
