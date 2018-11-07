module PBD_using_assign (input a,e,output y0,y1);
	
	assign #17 {y0,y1}= {~(a || ~e) , ~(~a || ~e)}; 
	
endmodule