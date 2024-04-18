module mantissas_addition_module (output reg S_result,
                                  output reg [24:0] Mantissa_result,
                                  input S_A,
                                  input S_B,
                                  input [23:0] Mantissa_shift_A,
                                  input [23:0] Mantissa_shift_B); 
    
	//selects the sign of the output and adds (or subtracts) the two fp's
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
endmodule