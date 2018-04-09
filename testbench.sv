`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench();

    logic clk;
    logic preset;
    logic [3:0] code;
    
    LFSR prg(clk, preset, code);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        preset = 1; #5;
        clk = 1; #0.1;
        clk = 0; #0.1;
        preset = 0;
    end
endmodule
