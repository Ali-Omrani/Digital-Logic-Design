module tan_controller (input start,clk,reset,x15,cc,
				output reg done,ldx,iconvert,selicon,selocon,
								ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup);
								
								
				reg[3:0] ps,ns;
	   		localparam [3:0] ws1=4'b0000,ws0=4'b0001,getdata=4'b0010,c1=4'b0011,s1=4'b0100,s2=4'b0101,s3=4'b0110,mult1=4'b0111,mult2=4'b1000,mult3=4'b1001,adding=4'b1010,loado=4'b1011,c2=4'b1100;
				always @(ps,start)begin: transition
			   ns=ws1;
				case (ps)
				ws1: if(start) ns=ws0;
               else ns=ws1;
				ws0:  if(~start) ns=getdata;
				      else ns=ws0;
				getdata: if (~x15)ns=s1; 
				    else ns=c1;
				c1: ns=s1;
				s1:ns=s2;
				s2:ns=s3;
				s3:ns=mult1;
				mult1:ns=mult2;
				mult2:ns=mult3;
				mult3:ns=adding;
				adding:if (cc) ns=loado;
				        else ns=mult1;
				loado: if(x15) ns=c2;
				        else ns=ws1;
				c2: ns=ws1;
				default  ns=ws1;
								endcase
				end
				always @(ps,start) begin: outputing
				  			case (ps)
				ws1:	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b100000000000000;
				ws0: 	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b000000001010010;
				getdata: 	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b010000000000000;
				c1: 	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b011100000000000;
				s1: 	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b000000000000100;
				s2: 	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b000000010010100;
				s3:	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b000000000100100;
				mult1:	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b000000010000100;
				mult2:	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b000000010000101;
				mult3:	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b000000010001000;
				adding:	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b000000000100000;
				loado: 	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b000001000000000;
				c2: 	{done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b000011100000000;
					default {done,ldx,iconvert,selicon,selocon,ldo,oconvert,ldap,lda1,ldep,lde0,self,selx,initc,cntup}=15'b100000000000000;			
								endcase
								end
				 always @(posedge clk) begin:sequential
   if (reset) ps<=ws1;
   else ps<=ns;
   end
        

endmodule


