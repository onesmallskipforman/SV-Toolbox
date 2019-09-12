/*
  Robert "Skipper" Gonzalez
  sgonzalez@g.hmc.edu
  09/12/2018
  counter module

  Below is a generalizd, synchronous reset, counter module.
  This module, when enabled, increments a value q by inc
  upon rising edge of the clock.

  Parameters:
    N: The number of bits for our variable q to increment

  Inputs:
    clk:        clock signat
    reset:      reset signal
    en:         enable signal
    inc:        amount to increment counter by

  Outputs:
    q[N-1:0]: N-bit variable being incremented
*/

module counter#(parameter N=8)
               (input  logic         clk,
                input  logic         reset,
                input  logic         en,
                input  logic         inc,
                output logic [N-1:0] q);

  // ensure counter only makes changes as the tick of
  // the clock or press of reset
  always_ff @(posedge clk, posedge reset)

    // restart q if reset, otherwise increment
    if      (reset)    q <= 0;
    else if (en)       q <= q+inc;
    else               q <= q;

endmodule
