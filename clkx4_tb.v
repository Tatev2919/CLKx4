`timescale 1ns/1ps

module clkx4_tb;
    reg clk_in;
    wire clk_out;
    
    clkx4 c1 (clk_in,clk_out);

    initial begin 
        $dumpfile("v.vcd");$dumpvars();
    end

    initial begin
        clk_in = 0;   
        #50000;
        $finish; 
    end

    always #40 clk_in = ~clk_in;
endmodule
