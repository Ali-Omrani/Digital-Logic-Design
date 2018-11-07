module Q2 (input a,b,c,d,i,j,k,l,output w,x,y,z);
	logic ci,bi,bi_cj,ai,ai_bj,ai_bj_ck;
	AO_gate U1 (d,i,0,z);
	AO_gate U2 (c,i,0,ci);
	AO_gate U3 (d,j,ci,y);
	AO_gate U4 (b,i,0,bi);
	AO_gate U5 (c,j,bi,bi_cj);
	AO_gate U6 (d,k,bi_cj,x);
	AO_gate U7 (a,i,0,ai);
	AO_gate U8 (b,j,ai,ai_bj);
	AO_gate U9 (c,k,ai_bj,ai_bj_ck);
	AO_gate U10 (d,l,ai_bj_ck,w);
endmodule