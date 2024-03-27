module debounce_module (input clk,
                        input reset,
                        input button,
                        output reg button_clean);
    reg [23:0] counter;
    reg current_state, next_state;

    parameter button_pressed   = 1'b1,
              button_unpressed = 1'b0;

    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= button_unpressed;
        else   
            current_state <= next_state;
    end

    always @(posedge clk or posedge reset) begin
        if (reset || counter == 24'h0)
            counter <= 24'b1001_1000_1001_0110_1000_0000;
        else if (button)
            counter <= counter - 24'b1;
        else 
            counter <= 24'b1001_1000_1001_0110_1000_0000;
    end

    always @(counter or current_state) begin
        next_state = current_state;
        button_clean = 1'b0;

        case (current_state)
            button_unpressed: begin
                if (counter) next_state = current_state;
                else next_state = button_pressed;
            end 
            button_pressed: begin
                button_clean = 1'b1;
                next_state = button_unpressed;
            end
            default: button_clean = 1'b0;
        endcase
    end

endmodule