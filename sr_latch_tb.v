`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2026 13:10:20
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb;

  reg enb_tb, rst_tb, s_tb, r_tb;
  wire q_tb, qbar_tb;
  
  sr_latch dut(enb_tb, rst_tb, s_tb, r_tb, q_tb, qbar_tb);
  
  initial
    begin
      {enb_tb, rst_tb, s_tb, r_tb} = 0;
    end
    
  always #5 enb_tb = ~enb_tb;
  
  initial 
    begin
      rst_tb = 1;
      #5;
      rst_tb = 0;
      
     // hold condition
      s_tb = 0;
      r_tb = 0;
      
      //reset condition 
      #10;
      s_tb = 0;
      r_tb = 1;
      
      //set condition
      #10;
      s_tb = 1;
      r_tb = 0;
      
      //invalid condition
      #10;
      s_tb = 1;
      r_tb = 1;

    end  
      
endmodule
