module PBD_using_primitive (input a,e,output y0,y1);
	
	wire j0,j1,j2,j3;

	not #(5,7) a_prime (j2,a);
	not #(5,7) e_prime (j3,e);

	nor #(9,11) a_nor_e_prime (y0,a,j3);
	nor #(9,11) a_prime_nor_e_prime (y1,j2,j3);

endmodule