// DSCH 3.5
// 7/24/2020 7:20:49 PM
// G:\VLSI course\Sir Software\Simulation My\XOR.sch

module XOR( A,B,XOR);
 input A,B;
 output XOR;
 wire w3,w5,w6,w7,w9,w10,w11,w12;
 wire w13,w14;
 not #(4) inverter_1(w3,A);
 not #(4) inverter_2(w5,B);
 and #(4) And_3(w6,w3,B);
 and #(4) And_4(w7,A,w5);
 or #(4) OR_5(XOR,w6,w7);
 nmos #(3) nmos_1_6(w3,vss,A); //  
 pmos #(3) pmos_2_7(w3,vdd,A); //  
 nmos #(3) nmos_1_8(w5,vss,B); //  
 pmos #(3) pmos_2_9(w5,vdd,B); //  
 nand #(4) Nand_1_10(w9,w3,B);
 not #(3) inverter_2_11(w6,w9);
 nmos #(4) nmos_1_3_12(w9,w10,w3); //  
 nmos #(1) nmos_2_4_13(w10,vss,B); //  
 pmos #(4) pmos_3_5_14(w9,vdd,w3); //  
 pmos #(4) pmos_4_6_15(w9,vdd,B); //  
 nmos #(3) nmos_1_7_16(w6,vss,w9); //  
 pmos #(3) pmos_2_8_17(w6,vdd,w9); //  
 nand #(4) Nand_1_18(w11,A,w5);
 not #(3) inverter_2_19(w7,w11);
 nmos #(4) nmos_1_3_20(w11,w12,A); //  
 nmos #(1) nmos_2_4_21(w12,vss,w5); //  
 pmos #(4) pmos_3_5_22(w11,vdd,A); //  
 pmos #(4) pmos_4_6_23(w11,vdd,w5); //  
 nmos #(3) nmos_1_7_24(w7,vss,w11); //  
 pmos #(3) pmos_2_8_25(w7,vdd,w11); //  
 nor #(4) Nor_1_26(w13,w6,w7);
 not #(3) inverter_2_27(XOR,w13);
 nmos #(4) nmos_1_3_28(w13,vss,w6); //  
 nmos #(4) nmos_2_4_29(w13,vss,w7); //  
 pmos #(1) pmos_3_5_30(w14,vdd,w6); //  
 pmos #(4) pmos_4_6_31(w13,w14,w7); //  
 nmos #(2) nmos_1_7_32(XOR,vss,w13); //  
 pmos #(2) pmos_2_8_33(XOR,vdd,w13); //  
endmodule

// Simulation parameters in Verilog Format
always
#200 A=~A;
#400 B=~B;

// Simulation parameters
// A CLK 1 1
// B CLK 2 2
