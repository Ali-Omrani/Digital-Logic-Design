module Q3 (input a,b,c,d,i,j,k,l , output w,x,y,z);
	assign #(89,85) w= a&i | b&j | c&k | d&l ;
	assign #(70,68) x= b&i | c&j | d&k ;
	assign #(51,51) y= c&i | d&j ;
	assign #(32,34) z= d&i ;
endmodule