`timescale 1ns/1ps

module ssd (
	input clk,
	output [7:0] segs,
	input [3:0] digit1, [3:0] digit2, [3:0] digit3, [3:0] digit4,
	output [3:0] anodes //active low
);

wire [1:0] sel;
reg [3:0] current_digit;
wire disp_clk;
wire rst = 0;
//reg [7:0] seg_out;
wire dec = 1;
seg_decoder ssdd(current_digit, dec, segs);
clock_divider cd (clk, rst, disp_clk);
counter count(disp_clk, sel);

always @ (posedge disp_clk) begin
	case(sel)
		2'b00: current_digit <= digit1;
		2'b01: current_digit <= digit2;
		2'b10: current_digit <= digit3;
		2'b11: current_digit <= digit4;
//		2'b01: current_digit <= 4'd2;
//		2'b10: current_digit <= 4'd3;
//		2'b11: current_digit <= 4'd4;
		default: current_digit <= 4'b0;
	endcase	
end

//assign segs = seg_out;
assign anodes[0] = sel == 2'b01 ? 0 : 1;
assign anodes[1] = sel == 2'b10 ? 0 : 1;
assign anodes[2] = sel == 2'b11 ? 0 : 1; 
assign anodes[3] = sel == 2'b00 ? 0 : 1; //4
endmodule
