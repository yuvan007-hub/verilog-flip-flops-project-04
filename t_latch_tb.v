`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2026 03:59:20
// Design Name: 
// Module Name: t_latch_tb
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


module t_latch_tb;

  reg t_tb, enb_tb, rst_tb;
  wire q_tb, qbar_tb;
  
  t_latch dut(t_tb, enb_tb, rst_tb, q_tb, qbar_tb);
  
  initial
    begin
      {enb_tb, rst_tb, t_tb} = 0;
    end
    
  always #5 enb_tb = ~enb_tb;
  
  initial
    begin
      rst_tb = 1;
      #10;
      rst_tb = 0;
      #10;
      t_tb = 1;
      #10;
      t_tb = 0;
    end

endmodule
