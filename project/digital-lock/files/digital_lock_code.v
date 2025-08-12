module Final_Project (Clk, A, B, C, Alarm, Unlock);
	input A, B, C, Clk;
	output Alarm;
	output Unlock;
	reg y;
	
	parameter S0 = 4'b0000, S1 = 4'b0001, S2 = 4'b0010, S3 = 4'b0011, S4 = 4'b0100, S5 = 4'b0101;
	parameter S6 = 4'b0110, S7 = 4'b0111, S8 = 4'b1000, S9 = 4'b1001, S10 = 4'b1010, S11 = 4'b1011;
	parameter S12 = 4'b1100, S13 = 4'b1101;
	
	always@(posedge  Clk)
		case(y)
			S0:
				if(A) y<= S5;
				else if (B) y<= S1;
				else if (C) y <= S5;
				else y <= S0;
			S1:
				if(A) y<= S9;
				else if (B) y<= S6;
				else if (C) y <= S2;
				else y <= S1;
			S2:
				if(A) y<= S3;
				else if (B) y<= S7;
				else if (C) y <= S7;
				else y <= S2;
			S3:
				if(A) y<= S0;
				else if (B) y<= S8;
				else if (C) y <= S4;
				else y <= S3;
			S4:
				if(A) y<= S0;
				else if (B) y<= S0;
				else if (C) y <= S0;
				else y <= S4;
			S5:
				if(A) y<= S10;
				else if (B) y<= S6;
				else if (C) y <= S6;
				else y <= S5;
			S6:
				if(A) y<= S11;
				else if (B) y<= S7;
				else if (C) y <= S7;
				else y <= S6;
			S7:
				if(A) y<= S12;
				else if (B) y<= S8;
				else if (C) y <= S8;
				else y <= S7;
			S8:
				if(A) y<= S8;
				else if (B) y<= S8;
				else if (C) y <= S13;
				else y <= S8;
			S9:
				if(A) y<= S0;
				else if (B) y<= S7;
				else if (C) y <= S7;
				else y <= S9;
			S10:
				if(A) y<= S0;
				else if (B) y<= S7;
				else if (C) y <= S7;
				else y <= S10;
			S11:
				if(A) y<= S0;
				else if (B) y<= S8;
				else if (C) y <= S8;
				else y <= S11;
			S12:
				if(A) y<= S0;
				else if (B) y<= S8;
				else if (C) y <= S8;
				else y <= S12;
			S13:
				if(A) y<= S0;
				else if (B) y<= S8;
				else if (C) y <= S8;
				else y <= S13;
				
		endcase
			
   always @(posedge Clk) begin
       Unlock <= (y == S4);
       Alarm <= (y == S8);
    end
	 
endmodule