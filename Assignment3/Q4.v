module Q4 (input [15:0]m,[3:0]n,output [31:0]fp);
//reg rr,dd;
	wire [15:0]n2,rr;
DCD16 ut0 (n,n2);
BS ut1 (m,n2,fp[31:16]);
IBD ut2 (n,rr);
genvar j;
generate
  for(j=14;j>=0;j=j-1)
  begin
    assign fp[j]=rr[14-j]&n[14-j];
assign	fp[15]=0;
end 

endgenerate  
endmodule

module TTBBQ4 ();
  
  wire [31:0] f;
  reg [15:3] mm; reg [3:0]nn;
  
  Q4 UT5 (mm,nn,f);
  
  initial
  begin
    nn=4'b0011;
    mm=16'b10110101;
	#2000 $stop;
  end
endmodule
 
