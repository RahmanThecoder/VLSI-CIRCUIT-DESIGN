// DSCH 3.5
// 7/24/2020 7:17:22 PM
// G:\VLSI course\Sir Software\Simulation My\OR.sch

module OR( A,B,OR);
 input A,B;
 output OR;
 wire w4,w6;
 nor #(4) Nor_1(w4,A,B);
 not #(3) inverter_2(OR,w4);
 nmos #(3) nmos_1_3(w4,vss,A); //  
 nmos #(3) nmos_2_4(w4,vss,B); //  
 pmos #(1) pmos_3_5(w6,vdd,A); //  
 pmos #(3) pmos_4_6(w4,w6,B); //  
 nmos #(2) nmos_1_7(OR,vss,w4); //  
 pmos #(2) pmos_2_8(OR,vdd,w4); //  
endmodule

// Simulation parameters in Verilog Format
always
#200 A=~A;
#400 B=~B;

// Simulation parameters
// A CLK 1 1
// B CLK 2 2
