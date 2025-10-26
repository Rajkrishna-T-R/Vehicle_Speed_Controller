`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2025 14:47:56
// Design Name: 
// Module Name: Tb_Vehicle_speed_controller
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


module Tb_Vehicle_speed_controller;


reg w,clk,pre_bar,clr_bar;

wire z;

integer clk_count=0;

FSM uut(.w(w),.pre_bar(pre_bar),.clr_bar(clr_bar),.clk(clk),.z(z));

initial
 
    begin
    
        clk=1'b0;
        
        pre_bar=1'b1;
        
        clr_bar=1'b0;
        
        // flip flops have aynchronous clear and preset
        
        forever #5 clk=~clk;
        
     end
     
initial
    
    begin

        #10;
        clr_bar=1'b1;
        
        #10 w=0;
        #10 w=1;
        #10 w=0;
        #10 w=1;
        #10 w=1;
        #10 w=0;
        #10 w=1;
        #10 w=0;
        #10 w=1;
        #10 w=1;
        #10 w=1;
        #10 w=0;
        #10 w=0;
        #10 w=0;
        #10 w=1;
        #10 w=0;
        
        
        
        
    end


always@(posedge clk)
    begin
        
        clk_count<=clk_count+1'b1;
        $display("W=%b,Z=%b,clk_count=%d",w,z,clk_count);
        
    end


endmodule
