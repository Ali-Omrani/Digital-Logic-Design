module Q2_PBDTestbench();

	logic a = 0;
	logic e = 0;
	logic y0,y1;
	PBD MUT (a,e,y0,y1);

	initial begin
	#31 a=1 ;
	#43 e=1 ;
	#47 a=0 ;
	#53 e=0 ;
	#79 $stop;
	end

endmodule
