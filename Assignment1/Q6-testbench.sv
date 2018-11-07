module Q6_PBDTestbench();

	logic a = 0;
	logic e = 0;
	logic y0,y1;
	
	logic aa=0;
	logic ee=0;
	logic yy0,yy1;
  
  	logic aaa=0;
  	logic eee=0;
	logic yyy0,yyy1;
  
	
	PBD MUT1 (a,e,y0,y1);
	PBD_using_primitive MUT2 (aa,ee,yy0,yy1);
	PBD_using_assign MUT3 (aaa,eee,yyy0,yyy1);
	initial begin
	#31 a=1 ;
	aa=1;
	aaa=1;
	
	#43 e=1 ;
	ee=1;
	eee=1;
	
	#47 a=0 ;
	aa=0;
	aaa=0;
	
	#53 e=0 ;
	ee=0;
	eee=0;
	
	#79 $stop;
	
	end

endmodule
