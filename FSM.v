`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2025 14:32:39
// Design Name: 
// Module Name: FSM
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


module FSM(
          input w,
          
          input pre_bar,
          
          input clr_bar,
          
          input clk,
          
          output z
    );
    
    
    wire  Y0,Y1;  // input of flip flops
    
    wire y0,y1,y_bar0,y_bar1; // output of flip flops 
    
    
    assign z=(w&(y0|y1));
    
    assign Y1=(w&(y0|y1));
    
    assign Y0=((w)&(~y0)&(~y1));
    
    D_flip_flop D0(.D(Y0),.PRE_BAR(pre_bar),.CLR_BAR(clr_bar),.CLK(clk),.Q(y0),.Qbar(y_bar0));
    D_flip_flop D1(.D(Y1),.PRE_BAR(pre_bar),.CLR_BAR(clr_bar),.CLK(clk),.Q(y1),.Qbar(y_bar1));
    
    
endmodule
