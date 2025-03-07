/*
 -----------------------------------------------------------------------------
 -- File           : fpadd_system.v
 -----------------------------------------------------------------------------
 */ 
 module fpadd_system (input clk,
                      input rst, 
                      input button, 
                      output [7:0] leds, 
                      output an0, output a0, output b0, output c0, output d0, output e0, output f0, output g0,
                      output an1, output a1, output b1, output c1, output d1, output e1, output f1, output g1);

   wire [31:0] fp_out, numA, numB;
   wire button_clean;

    // Instantiate the debouncing and edge detection circuit
    debounce_module debounce_inst (clk,
                                   rst,
                                   button,
                                   button_clean);
     
    // Instantiate  the Memory modules, that changes
    // it's ouput on the press of the button
    DataMemory DataMemory_inst (clk,
                                rst,
                                button_clean,
                                numA,
                                numB);
   
    // Instantiate the FP adder 
    fpadd_pipelined fpadd_pipelined_inst (clk,
                                          rst,
                                          numA, 
                                          numB,  
		     		                      fp_out);
        
   assign leds = fp_out[7:0];
   
    // Instantiate the 7segment display output 0 
    SSDisplays_module SSDisplays_inst0 (clk,
                                        rst,
                                        fp_out[31:24],
                                        {a0, b0, c0, d0, e0, f0, g0},
                                        an0);
   
    // Instantiate the 7segment display output 1
    SSDisplays_module SSDisplays_inst1 (clk,
                                        rst,
                                        fp_out[23:16],
                                        {a1, b1, c1, d1, e1, f1, g1},
                                        an1);

endmodule
