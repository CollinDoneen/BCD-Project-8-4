`timescale 1ns/1ps


module bcd(
	input clk,
	input rst,
	output [7:0] seg_cat,
	output [3:0] seg_an
//	output [3:0] digit
	//output reg clk_out	
);
wire [3:0] digit1, digit2, digit3, digit4;
wire c_out;
clock_divider clk_div(clk, rst, c_out);
reg [3:0] mem;

always @ (posedge c_out)
begin
//	if(mem == 4'd0) begin
//		//clk_out = 0;
//	end
	if(mem  == 4'd9) begin
			mem <= 4'b0;
			//clk_out = 1;
	end

	else 
		mem <= mem + 1;
		
	
end
//assign digit = mem;
assign digit1 = mem;
//assign digit2 = mem2;
//assign digit3 = mem3;
//assign digit4 = mem4;
ssd_0 ssd0 (
  .clk(clk),        // input wire clk
  .segs(seg_cat),      // output wire [7 : 0] segs
  .digit1(digit1),  // input wire [3 : 0] digit1
  .digit2(digit2),  // input wire [3 : 0] digit2
  .digit3(digit3),  // input wire [3 : 0] digit3
  .digit4(digit4),  // input wire [3 : 0] digit4
  .anodes(seg_an)  // output wire [3 : 0] anodes
);


endmodule

module clock_divider(
	input clk, rst,
	output reg c_out	
);
parameter divider_size = 100000000;
integer t_count = (divider_size / 2) - 1;
wire is_terminal;

reg [31:0] count;

always @ (posedge(clk)) begin
//	if(rst == 1) begin
//		c_out <= 0;
//		count <= 0;
//	end
	if(is_terminal == 1) begin
		count <= 0;
	end
	else begin
		count <= count + 1'b1;
	end

	if(is_terminal)
		c_out <= !c_out;
end

assign is_terminal = count == t_count;


endmodule