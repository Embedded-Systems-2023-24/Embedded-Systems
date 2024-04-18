module SSD_clock_module (input clk,
                         input reset,
                         output clk_ssd);
    reg [4:0]counter;

    always @(posedge clk or posedge reset) begin
        if (reset) 
            counter <= 5'hFF;
        else 
            counter <= counter - 5'b1;
    end

    assign clk_ssd = counter ? 1'b0 : 1'b1;
endmodule