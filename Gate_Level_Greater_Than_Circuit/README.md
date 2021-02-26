# Gate Level Greater Than Circuit

Experiment 2.6.1 from *FPGA Protoyping by SystemVerilog Examples*, Chu, Pong P.
    Wiley, 2018.

This circuit implements a 2 bit greater than comparator.  

| a1,b1 | a0,b0 | a > b |
|-------|-------|-------|
| a1>b1 |   X   |   1   | 
| a1<b1 |   X   |   0   | 
| a1=b1 | a0>b0 |   1   | 
| a1=b1 | a0<b0 |   0   | 
| a1=b1 | a0=b0 |   0   |

- SW3: a1
- SW2: a0
- SW1: b1
- SW0: b0
- LED0: gt_out

