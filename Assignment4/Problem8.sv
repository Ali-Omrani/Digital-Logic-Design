module MSFF (input D,Clk,output Q);
    wire Clkbar,Q1;
  not #6 (Clkbar,Clk);
  Dlatch ut1 (D,Clk,Q1);
  Dlatch ut2 (Q1,Clkbar,Q);
endmodule