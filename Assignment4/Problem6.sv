module shiftreg (input sin,clk, output [7:0] w );
genvar i;
wire [8:0]q;
assign q[0]=sin;
assign w=q[8:1]; 
generate for (i=1; i<=8;i=i+1) begin: row
 Dlatch Ui(q[i-1],clk,q[i]);
 end
 endgenerate
 endmodule 
