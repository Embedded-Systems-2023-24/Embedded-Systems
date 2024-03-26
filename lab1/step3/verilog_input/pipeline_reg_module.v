module pipeline_reg_module (input clk,
                            input reset,
                            input S_A,
                            input S_B,
                            input [23:0] Mantissa_shift_A,
                            input [23:0] Mantissa_shift_B,
                            input [7:0] EXP_result,
                            output reg pipe_S_A,
                            output reg pipe_S_B,
                            output reg [23:0] pipe_Mantissa_shift_A,
                            output reg [23:0] pipe_Mantissa_shift_B,
                            output reg [7:0]  pipe_EXP_result);

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
endmodule