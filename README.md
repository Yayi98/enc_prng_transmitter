# enc_prng_transmitter

This is a work in progress lfsr fibonacci prng generator encoded using 8b10b encoding scheme as per IEEE standards and serialized with 10:1 serialization using the xilinx primitive oserdese2 in a master slave configuration. The IO standard of the output of top module is LVDS

NOTE :-
  top.vhd module must be reset first in order to function correctly.
  top.vhd has been simulated and synthesized at 100MHz serial clock and 20MHz parallel clock.
  The encoder module, prng module and the parallel side of OSERDESE2 are supplied with 20MHz clock.
