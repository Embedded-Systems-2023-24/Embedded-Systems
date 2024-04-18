module debounce_module (input clk,
                        input reset,
                        input button,
                        output reg button_clean);
    reg [23:0] counter;
    reg [1:0] current_state, next_state;

    //parameters for FSM
    parameter button_pressed   = 2'b01,
              button_detected  = 2'b10,
              button_unpressed = 2'b00;

    //sequential FSM module
    always @(posedge clk or posedge reset) begin
        if (reset) current_state <= button_unpressed;
        else       current_state <= next_state;
    end

    //reduces the counter and resets it when needed
    always @(posedge clk or posedge reset) begin
        if (reset || counter == 24'h0)
            counter <= 24'b1001_1000_1001_0110_1000_0000;
        else if (button)
            counter <= counter - 24'b1;
        else 
            counter <= 24'b1001_1000_1001_0110_1000_0000;
    end

    //combinational FSM module
    always @(counter or current_state or button) begin
        next_state = current_state;
        button_clean = 1'b0;

        case (current_state)
            button_unpressed: begin
                if (counter) next_state = current_state;
                else next_state = button_detected;
            end 
            button_detected: begin
                button_clean = 1'b1;
                next_state = button_pressed;
            end
            button_pressed: begin
                button_clean = 1'b0;

                if (~button)
                    next_state = button_unpressed;
            end
            default: begin button_clean = 1'b0; next_state = current_state; end
        endcase
    end
endmodule