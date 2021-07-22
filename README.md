This code was written using quartus prime lite 20.1, windows 10.
This code haven't upload to board to verify but tested with testbench.

The stopwatch will start to count when x equal and remain to 0.
When seconds reach 9 it will set the variable state set to 1, so this will trigger another always block to count tens seconds add one.
If seconds reach 9 and tens seconds more than 4, then variable state_1 set to 1,so this will trigger another always block to count minutes add one.
If seconds reach 9 and tens seconds more than 4 and minutes reach 9, then variable state_2 set to 1, so this will trigger another always block to count tens minutes add one.
If seconds reach 9 and tens seconds more than 4 and minutes reach 9 and tens minutes more than 4, then all reset to 0 and count again.

The clock was assumed as 50Mhz.
Negative edge reset will reset all variable to 0.
The variable pre and pre1 is used for testing.
The value will shown by seven segment.
![seven segment](https://user-images.githubusercontent.com/52816448/126446447-795184ef-7126-4d91-a3a3-484a7f94563b.JPG)


This is the testbench results

![stopwatch_tb1](https://github.com/junneng-my/stopwatch/blob/main/stopwatch_tb1.JPG?raw=true)

First the stopwatch set to 59.58 increase to 59.59, then change to 00.00.
Then set the value to 00.48, it increase to 00.49, then increase to 00.50 and increase to 00.51.

State diagram  
![state diagram_stopwatch](https://user-images.githubusercontent.com/52816448/126582298-2610c1cd-e594-42d9-bcce-b2c8df8dedff.png)  

Future improvement
1) Actually the state_3 can go to state only, no need go to state_1 and state_2 to reset value to zero, it already reset before.
