`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 20:34:21
// Design Name: 
// Module Name: t_latch
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


module t_latch( input t, enb, rst, output reg q, qbar );

   always @(*)
     begin
       
           if (rst)
             begin
             q = 1'b0;
             qbar = 1'b1;
             end
           
       if (enb)
         begin
           //hold condition
           if(t == 0)
             begin
             q <= q;
             qbar <= qbar;
             end 
           //toggling condition
           else if ( t == 1)
             begin
             q <= ~q;
             qbar <= ~qbar;
             end
         end
     end
  
endmodule
