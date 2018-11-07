module PBD (input a , e ,output y0,y1);

	supply1 Vdd; 
	supply0 Gnd; 
	wire j1,j2,j3,j0;
  	
  	pmos #(5,6,7) T1 (j1,Vdd,j3);
  	pmos #(5,6,7) T2 (y0,j1,a);
  	pmos #(5,6,7) T5 (j0,Vdd,j3);
  	pmos #(5,6,7) T6 (y1,j0,j2);
  	pmos #(5,6,7) T9 (j2,Vdd,a);
  	pmos #(5,6,7) T11 (j3,Vdd,e);
  	
  	nmos #(3,4,5) T3 (y0,Gnd,a);
  	nmos #(3,4,5) T4 (y0,Gnd,j3);
  	nmos #(3,4,5) T7 (y1,Gnd,j3);
  	nmos #(3,4,5) T8 (y1,Gnd,j2);
  	nmos #(3,4,5) T10 (j2,Gnd,a);
  	nmos #(3,4,5) T12 (j3,Gnd,e);

endmodule