/*
  Robert "Skipper" Gonzalez
  sgonzalez@g.hmc.edu
  09/12/2018
  simple 2:1, N-bit multiplexer module

  Below is a simple multiplexer moduler for N-bit inputs. This
  module selects the s-th element between two N-bit input values.

  Parameters:
    N: Number of bits in each of the mux inputs. Defaults to 1.

  Inputs:
    d0[N-1:0]: the first N-bit signal
    d1[N-1:0]: the second N-bit signal
    s:         1-bit selector

  Outputs:
    y[N-1:0]: N-bit output chosen from the 2 inputs
*/

module mux2 #(parameter N=1)
             (input  logic [N-1:0] d0, d1,
				      input  logic         s,
				      output logic [N-1:0] y);

	assign y = s ? d1: d0;

endmodule