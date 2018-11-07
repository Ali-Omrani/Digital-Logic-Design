module SRClatch (input S,R,C,output Q);
  wire Sbar,Rbar,Cbar,i,j,Qbar;
  not #(6) G0(Sbar,S);
  not #(6) G1(Rbar,R);
  not #(6) G2(Cbar,C);
  nand #(8) G4(i,Sbar,Cbar);
  nand #(8) G5(j,Rbar,Cbar);
  nand #(8) G7(Qbar,j,Q);
  nand #(8) G6(Q,i,Qbar); 

  
endmodule
