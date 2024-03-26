module SSDisplays_module (input clk,
                          input reset,
                          input [7:0] value,
                          output [6:0] anodes,
                          output reg digit_sel);
    wire [3:0] digit_value;
    
    //This module creates the signal that drives
    // the two digit displays. (320ns)
    SSD_clock_module SSD_clock_inst (clk, reset, clk_ssd);

    //This module decodes the hex value into
    // the anodes that display the digit.
    SSD_decoder SSD_decoder_inst (digit_value, anodes);

    //This logic changes the digit we write into.
    always @ (posedge clk or posedge reset) begin
        if (reset)        digit_sel <= 1'b0;
        else if (clk_ssd) digit_sel <= ~digit_sel;
    end 

    assign digit_value = digit_sel ? value[7:4] : value [3:0];
endmodule