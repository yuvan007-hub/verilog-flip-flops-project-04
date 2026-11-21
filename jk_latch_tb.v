`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2026 07:50:16
// Design Name: 
// Module Name: jk_latch_tb
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


module jk_latch_tb;

  reg enb_tb, rst_tb, j_tb, k_tb;
  wire q_tb, qbar_tb;
  integer i;
  
  jk_latch dut(enb_tb, rst_tb, j_tb, k_tb, q_tb, qbar_tb);
  
  initial 
    begin
      {enb_tb, rst_tb, j_tb, k_tb} = 0;
    end
    
  always #5 enb_tb = ~enb_tb;
  
  initial 
    begin
      rst_tb = 1'b1;
      #10;
      rst_tb = 1'b0;
      for(i=0;i<4;i=i+1)
      begin
        #1;
        {j_tb,k_tb} = i;
      end
//      j_tb = 0;
//      k_tb = 0;
//      #10;
//      j_tb = 0;
//      k_tb = 1;
//      #10;
//      j_tb = 1;
//      k_tb = 0;
//      #10;
//      j_tb = 1;
//      k_tb = 1;
    end

endmodule
