module controller_tb ();
reg clk,reset,start;
wire LdM1,LdN1,LdQ1,LdR1,Rsol1,LdF1,done1;
wire LdM2,LdN2,LdQ2,LdR2,Rsol2,LdF2,done2;
controllerpp MUT2 (
	clk,
	reset,
	start,
	LdM2,
	LdN2,
	LdQ2,
	LdR2,
	Rsol2,
	LdF2,
	done2);

controller MUT1 (clk,reset,start1,LdM1,LdN1,LdQ1,LdR1,Rsol1,LdF1,done1);
initial begin   clk=0; repeat (51) #30 clk=~clk;   end
initial begin reset=0; start=0; #200 start=1; #200 start=0; end 
endmodule