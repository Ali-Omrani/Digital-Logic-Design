module Q5 (input [15:0] D , N ,output  [15:0] W );
	
	genvar i,j;
	generate for (i=15;i>=0;i--)
	begin
		logic tempi [16-i:0];
		assign tempi [0]=0;
		for (j=0;j<=(15-i);j++)
		begin
			AO_gate Uj (D[i+j],N[j],tempi[j],tempi[j+1]);
		end
	assign W[i]=tempi [16-i];
	end
	endgenerate;
endmodule