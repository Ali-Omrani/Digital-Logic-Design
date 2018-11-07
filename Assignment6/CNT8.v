module CNT8 (input clk,reset,cntup,initc,output reg[3:0]w,output countcomplete);
always @(posedge clk,posedge reset)begin:my
	if(reset) w<=3'b000;
	else if (initc) w<=3'b000;
	else if (cntup) w<=w+1;
	end
assign countcomplete=(w==3'b111)?1:0;
endmodule	