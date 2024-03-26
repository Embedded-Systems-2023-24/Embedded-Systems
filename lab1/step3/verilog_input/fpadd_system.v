/*
 -----------------------------------------------------------------------------
 -- File           : fpadd_system.v
 -----------------------------------------------------------------------------
 */ 
 module fpadd_system (input clk,
                      input rst, 
                      // input noisy_level, 
                      output [7:0] leds, 
                      output an0, output a0, output b0, output c0, output d0, output e0, output f0, output g0,
                      output an1, output a1, output b1, output c1, output d1, output e1, output f1, output g1);

   wire [31:0] fp_out;
     
   // Try this addition of FP numbers 
   // 6b64b235 + 6ac49214 = 6ba37d
   
   
   // Instantiate the FP adder 
   fpadd_pipelined fpadd_pipelined_inst (clk,
                                         rst,
                                         32'h6b64b235, 
                                         32'h6ac49214,  
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
