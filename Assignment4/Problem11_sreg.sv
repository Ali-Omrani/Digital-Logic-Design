module Q11sreg_tb ();
wire [7:0]w;
logic sin,c,reset=0;
shiftreg_10 ut (sin,c,reset,w);
initial
begin
c=0;
#100 c=1;
#100 c=0;
sin=1;
#100 c=1;
#100 c=0;

#100 c=1;
#100 c=0;

#100 c=1;
#100 c=0;

#100 c=1;
#100 c=0;

#100 c=1;
#100 c=0;
sin=0;
#100 c=1;
#100 c=0;

#100 c=1;
#100 c=0;

#100 c=1;
#100 c=0;

sin=1;
#100 c=1;
#100 c=0;

#100 c=1;
#100 c=0;

#100 c=1;
#100 c=0;

#100 c=1;
#100 c=0;

#100 c=1;
#100 c=0;
sin=0;
#100 c=1;
#100 c=0;
#100 reset=1;
#500 $stop;
end
endmodule
