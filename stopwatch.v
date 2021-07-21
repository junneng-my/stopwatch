module stopwatch(
				input	clock,
				x,
				reset,
				pre,
				pre1,
				output reg [6:0]	y,
				y_1,
				y_2,
				y_3);
	
	
reg [25:0] count_1;

reg [3:0]z,z_1,z_2,z_3;

reg state,state_1,state_2,state_3;




always @(posedge  clock or posedge  state_3 or negedge reset or posedge pre or posedge pre1 )
begin

	if((reset == 0) | (state_3 == 1))
		begin
		z   <= 0 ;
		count_1 <= 0 ;	
		end
	else if(pre)z<=8;
	else if(pre1)z<=8;
	
	else if(x)count_1<=0;
	
	else if(~x)
	begin
	count_1 <= count_1 +1;
	
	
	if (count_1 == 49_999_999)
	begin
			if(z>8)
			begin
			z<=0;
			count_1 <=0;
			state <=1;
			end
			else
			begin
			z <= z+1;
			count_1 <= 0;
			state<=0;
			end
				
	end
	
	
		
	end
end
	
always @(posedge state or posedge state_3 or negedge reset or posedge pre or posedge pre1)
begin

	if((reset==0) | (state_3 == 1) )
		begin
		z_1 <= 0 ;
		state_1 <= 0 ;	
		end
	else if (pre) z_1 <=5;
	else if (pre1) z_1 <=4;
	else if (state)
			if (z_1 >4)
			begin
			z_1 <= 0;
			state_1 <= 1;
			end
			else
			begin
			z_1 <= z_1+1;
			state_1<=0;
			end
	
	
	
		
end
always @(posedge state_1 or posedge state_3 or negedge reset or posedge pre)
begin

	if((reset==0) | (state_3 == 1) )
		begin
		z_2 <= 0 ;
		state_2 <= 0 ;	
		end
	else if (pre) z_2 <=9;
	else if (state_1)
			if (z_2 >8)
			begin
			z_2 <= 0;
			state_2 <= 1;
			end
			else
			begin
			z_2 <= z_2+1;
			state_2 <= 0;
			end	
	
	
	
		
end
always @(posedge state_2 or negedge reset or posedge pre)
begin

	if(reset==0 )
		begin
		z_3 <= 0 ;
		state_3 <= 0 ;	
		end
	else if (pre) z_3 <= 5;
	else if (state_2)
			if (z_3 >4)
			begin
			z_3 <= 0;
			state_3 <= 1;
			end
			else
			begin
			z_3 <= z_3+1;
			state_3 <= 0;
			end	
	
	
	
		
end

always @(z)
		begin

		case (z)
		0:y=7'b1000000;
		1:y=7'b1111001;
		2:y=7'b0100100;
		3:y=7'b0110000;
		4:y=7'b0011001;	
		5:y=7'b0010010;	
		6:y=7'b0000010;	
		7:y=7'b1111000;	
		8:y=7'b0000000;
		9:y=7'b0010000;
			
		
		endcase

		end

		



	always @(z_1)
		begin

		case (z_1)
		0:y_1=7'b1000000;	
		1:y_1=7'b1111001;
		2:y_1=7'b0100100;
		3:y_1=7'b0110000;
		4:y_1=7'b0011001;	
		5:y_1=7'b0010010;	
		6:y_1=7'b0000010;
		7:y_1=7'b1111000;	
		8:y_1=7'b0000000;	
		9:y_1=7'b0010000;
			
		
		endcase

		end

		


always @(z_2)
		begin

		case (z_2)
		0:y_2=7'b1000000;
		1:y_2=7'b1111001;
		2:y_2=7'b0100100;
		3:y_2=7'b0110000;
		4:y_2=7'b0011001;
		5:y_2=7'b0010010;	
		6:y_2=7'b0000010;	
		7:y_2=7'b1111000;
		8:y_2=7'b0000000;
		9:y_2=7'b0010000;
			
		
		endcase

		end

		


always @(z_3)
		begin

		case (z_3)
		0:y_3=7'b1000000;
		1:y_3=7'b1111001;
		2:y_3=7'b0100100;
		3:y_3=7'b0110000;	
		4:y_3=7'b0011001;
		5:y_3=7'b0010010;	
		6:y_3=7'b0000010;
		7:y_3=7'b1111000;	
		8:y_3=7'b0000000;
		9:y_3=7'b0010000;
			
		
		endcase

		end

		

 endmodule 
	
