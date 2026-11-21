`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2026 18:40:34
// Design Name: 
// Module Name: sr_ff_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sr_ff_tb;

  reg clk_tb, rst_tb, s_tb, r_tb;
  wire q_tb, qbar_tb;
  
  sr_ff dut(clk_tb, rst_tb, s_tb, r_tb, q_tb, qbar_tb);
  
  initial
    begin
    {clk_tb, rst_tb, s_tb, r_tb} = 0;
    end
    
  always #5 clk_tb = ~clk_tb;
  
  initial
    begin
    rst_tb = 1'b1;
    #10;
    rst_tb = 1'b0;
    #10;
    s_tb = 1'b0;
    r_tb = 1'b0;
    #10;
    s_tb = 1'b0;
    r_tb = 1'b1;
    #10;
    s_tb = 1'b1;
    r_tb = 1'b0;
    #10;
    s_tb = 1'b1;
    r_tb = 1'b1;
    end

endmodule
