`timescale 1ns/1ps

module counter(
	input clk,
	output [1:0] d_out
);
reg [1:0] count;
always @ (posedge clk) begin
	count <= count + 1'b1;
end
assign d_out = count;
endmodule
