/*
Robert (Skipper) Gonzalez
sgonzalez@g.hmc.edu
09/12/2018
7-segment display decoder module

Below is the module for decoding a 4-bit input into a
7-segment display. This allows for the display to produce an
image of the input in hex. The bits are ordered with the
segments gfedcba and a low bit represents a lit segment.

Inputs:
	data[3:0]:  	the four-bit input

Outputs:
	seg[6:0]:	the segment signals of a 7-segment display. Low
  corresponds to the segment lit up.
*/

module seg(input  logic [3:0] data,
			     output logic [6:0] seg);

	always_comb
		case(data)
      //             gfedcba
			4'h0: seg = 7'b1000000;
			4'h1: seg = 7'b1111001;
			4'h2: seg = 7'b0100100;
			4'h3: seg = 7'b0110000;
			4'h4: seg = 7'b0011001;
			4'h5: seg = 7'b0010010;
			4'h6: seg = 7'b0000010;
			4'h7: seg = 7'b1111000;
			4'h8: seg = 7'b0000000;
			4'h9: seg = 7'b0011000;
			4'hA: seg = 7'b0001000;
			4'hB: seg = 7'b0000011;
			4'hC: seg = 7'b1000110;
			4'hD: seg = 7'b0100001;
			4'hE: seg = 7'b0000110;
			4'hF: seg = 7'b0001110;
		endcase

endmodule
