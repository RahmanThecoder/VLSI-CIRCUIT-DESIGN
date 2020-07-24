// DSCH 3.5
// 7/24/2020 7:10:43 PM
// G:\VLSI course\Sir Software\Simulation My\Nand.sch

module Nand( A,B,Nand);
 input A,B;
 output Nand;
 wire w2,;
 nmos #(2) nmos_1(Nand,w2,A); // 0.3u 0.07u
 nmos #(1) nmos_2(w2,vss,B); // 0.3u 0.07u
 pmos #(2) pmos_3(Nand,vdd,A); // 0.5u 0.07u
 pmos #(2) pmos_4(Nand,vdd,B); // 0.5u 0.07u
endmodule

// Simulation parameters in Verilog Format
always
#200 A=~A;
#400 B=~B;

// Simulation parameters
// A CLK 1 1
// B CLK 2 2
