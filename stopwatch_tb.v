`timescale 1ns/100ps  

module stopwatch_tb;
		reg	clock,
				x,
				reset,
				pre,
				pre1;
				wire [6:0]	y,
				y_1,
				y_2,
				y_3;
			
				parameter endtime = 3000000000;
stopwatch DUT(
				clock,
				x,
				reset,
				pre,
				pre1,
				y,
				y_1,
				y_2,
				y_3);

initial
begin
				clock=0;
				x=1;
				reset=1;
				pre=0;
				pre1=0;
				
				
end				
always #10 clock = ~ clock;

initial
begin
#500000000;

pre=1;
#500;
pre=0;
#500;
x=0;
#3100000000;
x=1;
#500;
reset=0;
#10000;
reset=1;
pre1=1;
#500;
pre1=0;
#500;
x=0;



#3100000000;
x=1;
reset=0;

$finish;
end
endmodule
