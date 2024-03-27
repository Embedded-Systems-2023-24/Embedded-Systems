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
module fpadd_pipelined (input clk,
                        input reset,
                        input [31:0]reg_A, 
                        input [31:0]reg_B,  
		     		    output reg[31:0] out);

	wire [31:0] result;
	wire [22:0] Mantissa_normal_result, Mantissa_A, Mantissa_B;
	wire  [7:0] EXP_normal_result, EXP_result, EXP_A, EXP_B;
	wire        S_A, S_B, S_result;
	wire [23:0] Mantissa_shift_A, Mantissa_shift_B;
	wire [24:0] Mantissa_result;
	reg  [31:0] A, B;

	//pipeline registers
	reg pipe_S_A, pipe_S_B;
	reg [23:0] pipe_Mantissa_shift_A, pipe_Mantissa_shift_B;
	reg [7:0] pipe_EXP_result;
				     	
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
	seperate_segments seperate_segments_inst (S_A,
                          					  S_B,
                          					  EXP_A,
                          					  EXP_B,
                          					  Mantissa_A,
                          					  Mantissa_B,
                          					  A,
                          					  B);

    //(a), (b): Adjust exponents and shift mantissas.
	compare_shift_module compare_shift_inst(Mantissa_A,
                          					Mantissa_B, 
                          					EXP_A, 
                          					EXP_B, 
                          					Mantissa_shift_A, 
                          					Mantissa_shift_B, 
                          					EXP_result);
	
	//pipeline
	always @(posedge clk or posedge reset) begin
		if ( reset ) begin
			pipe_S_A <= 1'b0;
			pipe_S_B <= 1'b0;
			pipe_Mantissa_shift_A <= 24'b0;
			pipe_Mantissa_shift_B <= 24'b0;
			pipe_EXP_result <= 8'b0;
		end	else begin
			pipe_S_A <= S_A;
			pipe_S_B <= S_B;
			pipe_Mantissa_shift_A <= Mantissa_shift_A;
			pipe_Mantissa_shift_B <= Mantissa_shift_B;
			pipe_EXP_result <= EXP_result;
		end
	end

	//(c): Add the two Mantissas and define sign of result.
	mantissas_addition_module mantissas_addition_inst (S_result,
                                  				       Mantissa_result,
                                  				       pipe_S_A,
                                  				       pipe_S_B,
                                  				       pipe_Mantissa_shift_A,
                                  				       pipe_Mantissa_shift_B); 

	//(d): Normalise final result.
	 post_normalization_module post_normalization_inst (Mantissa_normal_result,
                                  						EXP_normal_result,
								  						Mantissa_result,
								  						pipe_EXP_result);

	assign result = { (Mantissa_result ? S_result : 1'b0),
					  EXP_normal_result,
					  Mantissa_normal_result};
endmodule