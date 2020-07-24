// DSCH 3.5
// 7/24/2020 7:12:43 PM
// G:\VLSI course\Sir Software\Simulation My\And.sch

module And( A,B,AND);
 input A,B;
 output AND;
 wire w4,w6;
 nand #(4) Nand_1(w4,A,B);
 not #(3) inverter_2(AND,w4);
 nmos #(3) nmos_1_3(w4,w6,A); //  
 nmos #(1) nmos_2_4(w6,vss,B); //  
 pmos #(3) pmos_3_5(w4,vdd,A); //  
 pmos #(3) pmos_4_6(w4,vdd,B); //  
 nmos #(2) nmos_1_7(AND,vss,w4); //  
 pmos #(2) pmos_2_8(AND,vdd,w4); //  
endmodule

// Simulation parameters in Verilog Format
always
#200 A=~A;
#400 B=~B;

// Simulation parameters
// A CLK 1 1
// B CLK 2 2
