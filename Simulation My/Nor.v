// DSCH 3.5
// 7/24/2020 7:15:43 PM
// G:\VLSI course\Sir Software\Simulation My\Nor.sch

module Nor( A,B,NOR);
 input A,B;
 output NOR;
 wire w5;
 nmos #(2) nmos_1(NOR,vss,A); // 0.3u 0.07u
 nmos #(2) nmos_2(NOR,vss,B); // 0.3u 0.07u
 pmos #(1) pmos_3(w5,vdd,A); // 0.5u 0.07u
 pmos #(2) pmos_4(NOR,w5,B); // 0.5u 0.07u
endmodule

// Simulation parameters in Verilog Format
always
#200 A=~A;
#400 B=~B;

// Simulation parameters
// A CLK 1 1
// B CLK 2 2
