module AO_gate (input a , b , c,output w);
	logic ab;
	and #(13,17) U1 (ab,a,b);
	or  #(19,17) U2 (w,ab,c);
endmodule