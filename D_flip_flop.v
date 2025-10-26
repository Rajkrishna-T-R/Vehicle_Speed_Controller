`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2025 14:31:35
// Design Name: 
// Module Name: D_flip_flop
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


module D_flip_flop(

                    D,
                    
                    PRE_BAR,
                    
                    CLR_BAR,
                    
                    CLK,
                    
                    Q,
                    
                    Qbar);


input  D;

input PRE_BAR;

input CLR_BAR;

input  CLK;

output reg Q;

output wire Qbar;


always@(posedge CLK or negedge PRE_BAR or negedge CLR_BAR)

    begin
       
        if(PRE_BAR==0)
        
            begin
            
                Q<=1;
                
            end    
         
        else if(CLR_BAR==0)
        
            begin
            
                Q<=0;   
            end
         
          else
          
            begin 
            
                Q<=D;
                
            end
       
    end
    
    assign Qbar=~Q;
    
endmodule
