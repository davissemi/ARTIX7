# 2-bit comparator

This implements a 2-bit comparator, which takes 2 2-bit values and determines
the magnitude.  It implements the following truth table:

| a1,b1 | a0,b0 | a > b | a < b | a = b |
|-------|-------|-------|-------|-------|
| a1>b1 |   X   |   1   |   0   |   0   |
| a1<b1 |   X   |   0   |   1   |   0   |
| a1=b1 | a0>b0 |   1   |   0   |   0   |
| a1=b1 | a0<b0 |   0   |   1   |   0   |
| a1=b1 | a1=b1 |   0   |   0   |   1   |

On the Arty A7, the switches and LEDs are configured thus:

D6: a = b
D5: a < b
D4: a > b

SW3: a[1]
SW2: a[0]
SW1: b[1]
SW0: b[0]

