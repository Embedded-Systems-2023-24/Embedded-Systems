module seperate_segments (output reg S_A,
                          output reg S_B,
                          output reg [7:0] EXP_A,
                          output reg [7:0] EXP_B,
                          output reg [22:0] Mantissa_A,
                          output reg [22:0] Mantissa_B,
                          input [31:0] A,
                          input [31:0] B);

    always @ (A or B) begin
		S_A = A[31];
		S_B = B[31];

		EXP_A = A[30:23];
		EXP_B = B[30:23];
		
		Mantissa_A = A[22:0];
		Mantissa_B = B[22:0];
	end
endmodule