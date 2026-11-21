`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2026 04:16:07
// Design Name: 
// Module Name: sr_ff
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


module sr_ff( input clk, rst, s, r, output reg q, qbar );

  always @(posedge clk)
    begin
      if(rst)
        begin
          q <= 1'b0;
          qbar <= 1'b1;
        end
      //
      else if(s == 0 && r == 0)
        begin
          q <= q;
          qbar <= qbar;
        end
        
      else if(s == 0 && r == 1)
        begin
          q <= 1'b0;
          qbar <= 1'b1;
        end
        
      else if(s == 1 && r == 0)
        begin
          q <= 1'b1;
          qbar <= 1'b0;
        end
        
      else if(s == 1 && r == 1)
        begin
          q <= 1'bx;
          qbar <= 1'bx;
        end
    end   


endmodule
