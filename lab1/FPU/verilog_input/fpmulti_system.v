module fpmulti_system (input clk,
                       input reset,
                       input [31:0]reg_A, 
                       input [31:0]reg_B,  
		     		   output reg[31:0] out);
	wire [31:0] result;
	wire [22:0] Mantissa_normal_result, Mantissa_A, Mantissa_B;
	wire  [7:0] EXP_normal_result, EXP_result, EXP_A, EXP_B;
	wire        S_A, S_B, S_result;
	wire [47:0] Mantissa_result;
	reg  [31:0] A, B;

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

	//Seperate segments of FP number A and B.
	seperate_segments seperate_segments_inst (S_A,
                          					  S_B,
                          					  EXP_A,
                          					  EXP_B,
                          					  Mantissa_A,
                          					  Mantissa_B,
                          					  A,
                          					  B);

    assign EXP_result = EXP_A + EXP_B - 8'd127;
    assign Mantissa_result = {1'b1, Mantissa_A} * {1'b1, Mantissa_B};

    assign Mantissa_normal_result = Mantissa_result[47] ? Mantissa_result[46:24] : Mantissa_result[45:23];
    assign EXP_normal_result = Mantissa_result[47] ? EXP_result + 1'b1 : EXP_result;
    assign S_result = S_A ^ S_B;

	assign result = {S_result, EXP_normal_result, Mantissa_normal_result};
    
endmodule