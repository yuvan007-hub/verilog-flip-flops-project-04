`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2026 14:00:05
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb;

  reg enb_tb, rst_tb, d_tb;
  wire q_tb, qbar_tb;
  
  d_latch dut(enb_tb, rst_tb, d_tb, q_tb, qbar_tb);
  
  initial
    begin
      {enb_tb, rst_tb, d_tb} = 0;
    end
    
  always #5 enb_tb = ~enb_tb;
  
  initial
    begin
      rst_tb = 1;
      #15;
      rst_tb = 0;
      
      #5;
      d_tb = 1; 
      
      #5;
      d_tb = 0;
    end

endmodule
