# 4-bit comparator

This implements a 4-bit comparator, which takes 2 4-bit values and determines
the magnitude.  It uses 2 2-bit comparators, one for the high bits and one for the low bits along with some glue logic to determine the magnitude.  It implements the following truth table:

| a1,b1 | a0,b0 | ain > bin | ain < bin | ain = bin | a > b | a < b | a = b |
|-------|-------|-----------|-----------|-----------|-------|-------|-------|
| a1>b1 |   X   |   X       |   X       |     X     |   1   |   0   |   0   |
| a1<b1 |   X   |   X       |   X       |     X     |   0   |   1   |   0   |
| a1=b1 | a0>b0 |   X       |   X       |     X     |   1   |   0   |   0   | 
| a1=b1 | a0<b0 |   X       |   X       |     X     |   0   |   1   |   0   |
| a1=b1 | a0=b0 |   1       |   0       |     0     |   1   |   0   |   0   |
| a1=b1 | a0=b0 |   0       |   1       |     0     |   0   |   1   |   0   |
| a1=b1 | a0=b0 |   0       |   0       |     1     |   0   |   0   |   1   |

The Arty A7 only has 4 DIP switches, so there's no implementation for this on the board yet.

