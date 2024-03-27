module DataMemory (input clk,
                   input reset,
                   input button,
                   output [31:0] numA,
                   output [31:0] numB);
    
    reg [63:0] data[9:0];
    wire [63:0] temp;
    reg [3:0] pointer;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            data[0] <= 64'h3f800000_40000000;
            data[1] <= 64'hbf800000_3f800000;
            data[2] <= 64'hc2de8000_45155e00;
            data[3] <= 64'h6b64b235_6ac49214;
            data[4] <= 64'h2ac49214_6ac49214;
            data[5] <= 64'hbfc66666_3fc7ae14;
            data[6] <= 64'hc565ee8b_4565ee8a;
            data[7] <= 64'h447a4efa_c47a1ccd;
            data[8] <= 64'h00000000_00000000;
            data[9] <= 64'h38108900_bb908900;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset || pointer == 4'hA)
            pointer <= 4'h0;
        else if (button)
            pointer <= pointer + 4'h1;
    end

    assign temp = data[pointer];

    assign numA = temp[63:32];
    assign numB = temp[31:0];

endmodule