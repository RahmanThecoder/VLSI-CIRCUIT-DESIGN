// DSCH 3.5
// 7/24/2020 7:22:29 PM
// G:\VLSI course\Sir Software\Simulation My\XNOR.sch

module XNOR( A,B,XNOR);
 input A,B;
 output XNOR;
 wire w4,w6,w7,w8,w9,w10,w11,w12;
 wire w13,w14,w15;
 xor #(4) XOR_1(w4,A,B);
 not #(3) inverter_2(XNOR,w4);
 not #(4) inverter_1_3(w6,A);
 not #(4) inverter_2_4(w7,B);
 and #(5) And_3_5(w8,w6,B);
 and #(5) And_4_6(w9,A,w7);
 or #(4) OR_5_7(w4,w8,w9);
 nmos #(4) nmos_1_6_8(w6,vss,A); //  
 pmos #(4) pmos_2_7_9(w6,vdd,A); //  
 nmos #(4) nmos_1_8_10(w7,vss,B); //  
 pmos #(4) pmos_2_9_11(w7,vdd,B); //  
 nand #(4) Nand_1_10_12(w10,w6,B);
 not #(4) inverter_2_11_13(w8,w10);
 nmos #(4) nmos_1_3_12_14(w10,w11,w6); //  
 nmos #(1) nmos_2_4_13_15(w11,vss,B); //  
 pmos #(4) pmos_3_5_14_16(w10,vdd,w6); //  
 pmos #(4) pmos_4_6_15_17(w10,vdd,B); //  
 nmos #(4) nmos_1_7_16_18(w8,vss,w10); //  
 pmos #(4) pmos_2_8_17_19(w8,vdd,w10); //  
 nand #(4) Nand_1_18_20(w12,A,w7);
 not #(4) inverter_2_19_21(w9,w12);
 nmos #(4) nmos_1_3_20_22(w12,w13,A); //  
 nmos #(1) nmos_2_4_21_23(w13,vss,w7); //  
 pmos #(4) pmos_3_5_22_24(w12,vdd,A); //  
 pmos #(4) pmos_4_6_23_25(w12,vdd,w7); //  
 nmos #(4) nmos_1_7_24_26(w9,vss,w12); //  
 pmos #(4) pmos_2_8_25_27(w9,vdd,w12); //  
 nor #(4) Nor_1_26_28(w14,w8,w9);
 not #(3) inverter_2_27_29(w4,w14);
 nmos #(4) nmos_1_3_28_30(w14,vss,w8); //  
 nmos #(4) nmos_2_4_29_31(w14,vss,w9); //  
 pmos #(1) pmos_3_5_30_32(w15,vdd,w8); //  
 pmos #(4) pmos_4_6_31_33(w14,w15,w9); //  
 nmos #(3) nmos_1_7_32_34(w4,vss,w14); //  
 pmos #(3) pmos_2_8_33_35(w4,vdd,w14); //  
 nmos #(2) nmos_1_36(XNOR,vss,w4); //  
 pmos #(2) pmos_2_37(XNOR,vdd,w4); //  
endmodule

// Simulation parameters in Verilog Format
always
#200 A=~A;
#400 B=~B;

// Simulation parameters
// A CLK 1 1
// B CLK 2 2
