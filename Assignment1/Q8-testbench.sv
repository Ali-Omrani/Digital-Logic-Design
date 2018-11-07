module Q8_fixed_point_testbench ();

	logic n0=0,n1=0,n2=0;
	logic o0,o1,o2,o3,o4,o5,o6,o7;

	fixed_point_gen MUT (n0,n1,n2,o0,o1,o2,o3,o4,o5,o6,o7);

	initial begin 
	#91 n0=1;
	#91 n1=1;
	#91 n0=0;
	#91 n2=1;
	#91 n0=1;
	#91 n1=0;
	#91 n0=0;
	#91 n2=0;
	#91 $stop;
	end		

endmodule