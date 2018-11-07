module shiftreg_tb();
  wire [7:0] w;
  logic sin,clk;
  shiftreg ut7 (sin,clk,w);
initial
begin
  sin=1; clk=1;
  #40 clk=0;
 #500 $stop;
end
endmodule
