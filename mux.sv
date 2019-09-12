/*
  Robert "Skipper" Gonzalez
  sgonzalez@g.hmc.edu
  09/12/2018
  generalized (2^M):1, N-bit multiplexer module

  Below is a generalizd multiplexer module. This module
  selects the s-th element between M number of N-bit input values.

  Parameters:
    N: Number of bits in each of the mux inputs. Defaults to 1.
    M: The number of bits in the selector. Corresponds to 2^M inputs. Defaults to 1

  Inputs:
    d[(2**M)*N-1:0]:       (2^M)*N-bit signal containing the 2^M number of N-bit inputs
    s[M-1:0]:              M-bit selector to choose between 2^M inputs

  Outputs:
    y[N-1:0]: N-bit output chosen from the M inputs in d
*/

module mux #(parameter N=1,
             parameter M=1)
            (input  logic [(2**M)*N-1:0]  d,
             input  logic [M-1:0]         s,
             output logic [N-1:0]         y);

  assign y = d[s*N +: N];

endmodule
