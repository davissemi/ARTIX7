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

Pin mapping:

- D4: z[3]
- D5: z[2]
- D6: z[1]
- D7: z[0]
- D0: en (rgb LED; blue is selected, and it's very bright)

- SW0: en
- SW1: a1
- Sw2: a0
