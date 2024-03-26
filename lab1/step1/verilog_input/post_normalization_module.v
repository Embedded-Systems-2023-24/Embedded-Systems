module post_normalization_module (output [22:0] Mantissa_normal_result,
                                  output [7:0] EXP_normal_result,
								  input [24:0] Mantissa_result,
								  input [7:0] EXP_result);
	reg [4:0] N;

	always @(Mantissa_result) begin
		casex (Mantissa_result)
			25'b1xxxxxxxxxxxxxxxxxxxxxxxx: N = -5'd1;
			25'b01xxxxxxxxxxxxxxxxxxxxxxx: N = 5'd0;
			25'b001xxxxxxxxxxxxxxxxxxxxxx: N = 5'd1;
			25'b0001xxxxxxxxxxxxxxxxxxxxx: N = 5'd2;
			25'b00001xxxxxxxxxxxxxxxxxxxx: N = 5'd3;
			25'b000001xxxxxxxxxxxxxxxxxxx: N = 5'd4;
			25'b0000001xxxxxxxxxxxxxxxxxx: N = 5'd5;
			25'b00000001xxxxxxxxxxxxxxxxx: N = 5'd6;
			25'b000000001xxxxxxxxxxxxxxxx: N = 5'd7;
			25'b0000000001xxxxxxxxxxxxxxx: N = 5'd8;
			25'b00000000001xxxxxxxxxxxxxx: N = 5'd9;
			25'b000000000001xxxxxxxxxxxxx: N = 5'd10;
			25'b0000000000001xxxxxxxxxxxx: N = 5'd11;
			25'b00000000000001xxxxxxxxxxx: N = 5'd12;
			25'b000000000000001xxxxxxxxxx: N = 5'd13;
			25'b0000000000000001xxxxxxxxx: N = 5'd14;
			25'b00000000000000001xxxxxxxx: N = 5'd15;
			25'b000000000000000001xxxxxxx: N = 5'd16;
			25'b0000000000000000001xxxxxx: N = 5'd17;
			25'b00000000000000000001xxxxx: N = 5'd18;
			25'b000000000000000000001xxxx: N = 5'd19;
			25'b0000000000000000000001xxx: N = 5'd20;
			25'b00000000000000000000001xx: N = 5'd21;
			25'b000000000000000000000001x: N = 5'd22;
			25'b0000000000000000000000001: N = 5'd23;
			default: N = 5'd0;
		endcase
	end

	assign Mantissa_normal_result = (N == -5'd1 ? Mantissa_result[23:1] : Mantissa_result << N);
	assign EXP_normal_result = (Mantissa_result ? (N == -5'd1 ? EXP_result + 8'b1 : EXP_result - N) : 8'b0);

endmodule