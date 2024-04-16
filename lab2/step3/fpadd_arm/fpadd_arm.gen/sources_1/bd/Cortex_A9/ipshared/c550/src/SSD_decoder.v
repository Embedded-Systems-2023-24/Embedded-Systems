module SSD_decoder (input [3:0] value,
                    output reg [6:0] anodes);
    
    always @ (value) begin
        case (value)
            4'h0: anodes = 7'b1111110;             
            4'h1: anodes = 7'b0110000;
            4'h2: anodes = 7'b1101101;
            4'h3: anodes = 7'b1111001;
            4'h4: anodes = 7'b0110011;
            4'h5: anodes = 7'b1011011;
            4'h6: anodes = 7'b1011111;
            4'h7: anodes = 7'b1110000;
            4'h8: anodes = 7'b1111111;
            4'h9: anodes = 7'b1111011;
            4'hA: anodes = 7'b1110111;
            4'hB: anodes = 7'b0011111;
            4'hC: anodes = 7'b1001110;
            4'hD: anodes = 7'b0111101;
            4'hE: anodes = 7'b1001111;
            4'hF: anodes = 7'b1000111;
            default: anodes = 7'b1111111;
        endcase
    end
    
endmodule