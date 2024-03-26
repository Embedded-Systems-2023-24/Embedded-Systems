module compare_shift_module (input [22:0] Mantissa_A,
                             input [22:0] Mantissa_B, 
                             input [7:0] EXP_A, 
                             input [7:0] EXP_B, 
                             output reg [23:0] Mantissa_shift_A, 
                             output reg [23:0] Mantissa_shift_B, 
                             output reg [7:0] EXP_result);
    reg [7:0] diff;

	always@ (EXP_A or EXP_B) begin
		if (EXP_A == EXP_B) begin 
			diff = 8'b0;

			Mantissa_shift_A = Mantissa_A;
			Mantissa_shift_B = Mantissa_B;

			EXP_result = EXP_A;
	    end
		else if (EXP_A > EXP_B) begin
			diff = EXP_A - EXP_B;

			Mantissa_shift_A = {1'b1, Mantissa_A};
			Mantissa_shift_B = {1'b1, Mantissa_B} >> diff;

			EXP_result = EXP_A;
		end else begin
			diff = EXP_B - EXP_A;

			Mantissa_shift_A = {1'b1, Mantissa_A} >> diff;
			Mantissa_shift_B = {1'b1, Mantissa_B};

			EXP_result = EXP_B;
		end
	end
endmodule