module fixed_point_gen (input n0,n1,n2,output o0,o1,o2,o3,o4,o5,o6,o7);
	
	logic y0,y1,y00,y01,y10,y11;
 	
 	PBD_using_assign U1 (n0,1,y0,y1);
	PBD_using_assign U2 (n1,y1,y01,y11);
	PBD_using_assign U3 (n2,y11,o3,o7);
	PBD_using_assign U4 (n2,y01,o1,o5);

	PBD_using_assign U7 (n1,y0,y00,y10);
	PBD_using_assign U5 (n2,y10,o2,o6);
	PBD_using_assign U6 (n2,y00,o0,o4);

endmodule