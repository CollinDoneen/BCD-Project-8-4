`timescale 1ns/1ps

module clock_divider(
	input clk, rst,
	output reg c_out	
);
parameter divider_size = 50000;
integer t_count = (divider_size / 2) - 1;
wire is_terminal;

reg [15:0] count;

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
