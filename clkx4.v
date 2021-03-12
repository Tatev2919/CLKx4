`timescale 1ns/1ps

module clkx4(clk_in,clk_out);
    input clk_in;
    output clk_out;
    wire clk_out1,clk_out2,clk_out3;
    time t,p1;
    initial t = 0;

    always @(posedge clk_in) begin
        p1 = $time - t;
        t = $time;
        $display("\n Current time is : %d \n",t); 
    end
    
    assign #(p1/8) clk_out1 = clk_in;
    assign #(p1/8) clk_out2 = clk_out1;
    assign #(p1/8) clk_out3 = clk_out2;
    
    assign clk_out = ~(clk_in^clk_out1^clk_out2^clk_out3);
endmodule
