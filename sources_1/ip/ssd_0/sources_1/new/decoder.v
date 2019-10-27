`timescale 1ns/1ps

module seg_decoder(
	input [3:0] d_in,
	input dec,
	output reg [7:0] d_out //bit 0 is A
);

//reg [7:0] d_out;

always @ (d_in) begin
	case(d_in)
		4'd0: d_out <= 8'b11000000; //all  on except the decimal and the middle
		4'd1: d_out <= 8'b11111001;
		4'd2: d_out <= 8'b10100100;
		4'd3: d_out <= 8'b10110000;
		4'd4: d_out <= 8'b10011001;
		4'd5: d_out <= 8'b10010010;		
		4'd6: d_out <= 8'b10000010;
		4'd7: d_out <= 8'b11111000;
		4'd8: d_out <= 8'b10000000;
		4'd9: d_out <= 8'b10010000;
		default: d_out <= 8'b11000000;
	endcase
	d_out[7] <= dec == 1 ? 1 : 0;
end
//assign d_out = d_out;
endmodule
