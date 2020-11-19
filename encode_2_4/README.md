# 2-to-4 bit Encoder with enable

This 2-to-4 bit encoder implements the following truth table:

| en | a1 | a0 | z3 | z2 | z1 | z0 |
|----|----|----|----|----|----|----|
| 0  | X  | X  |  0 |  0 |  0 |  0 |
| 1  | 0  | 0  |  0 |  0 |  0 |  1 |
| 1  | 0  | 1  |  0 |  0 |  1 |  0 |
| 1  | 1  | 0  |  0 |  1 |  0 |  0 |
| 1  | 1  | 1  |  1 |  0 |  0 |  0 |

Derived from *FPGA Prototyping with Verilog*, Pong Chu.

Due to the paucity of DIP switches on the Arty, implementation of this on the
board is deferred until a later date (i.e. when I learn how to attach 
additional switches to the dev board).
