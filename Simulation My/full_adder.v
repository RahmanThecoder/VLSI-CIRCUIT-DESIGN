// DSCH 3.5
// 7/24/2020 7:30:22 PM
// G:\VLSI course\Sir Software\Simulation My\full_adder.sch

module full_adder( A,B,C,sum,carry);
 input A,B,C;
 output sum,carry;
 wire w4,w5,w8,w10,w11,w12,w13,w14;
 wire w15,w16,w17,w18,w19,w20,w21,w22;
 wire w23,w24,w25,w26,w27,w28,w29,w30;
 wire w31,w32,w33,w34,w35;
 or #(4) OR_1(carry,w8,w5);
 xor #(8) XOR_1_2(w4,A,B);
 and #(4) And_2_3(w5,A,B);
 not #(4) inverter_1_3_4(w10,A);
 not #(4) inverter_2_4_5(w11,B);
 and #(5) And_3_5_6(w12,w10,B);
 and #(5) And_4_6_7(w13,A,w11);
 or #(8) OR_5_7_8(w4,w12,w13);
 nmos #(4) nmos_1_6_8_9(w10,vss,A); //  
 pmos #(4) pmos_2_7_9_10(w10,vdd,A); //  
 nmos #(4) nmos_1_8_10_11(w11,vss,B); //  
 pmos #(4) pmos_2_9_11_12(w11,vdd,B); //  
 nand #(4) Nand_1_10_12_13(w14,w10,B);
 not #(5) inverter_2_11_13_14(w12,w14);
 nmos #(4) nmos_1_3_12_14_15(w14,w15,w10); //  
 nmos #(1) nmos_2_4_13_15_16(w15,vss,B); //  
 pmos #(4) pmos_3_5_14_16_17(w14,vdd,w10); //  
 pmos #(4) pmos_4_6_15_17_18(w14,vdd,B); //  
 nmos #(5) nmos_1_7_16_18_19(w12,vss,w14); //  
 pmos #(5) pmos_2_8_17_19_20(w12,vdd,w14); //  
 nand #(4) Nand_1_18_20_21(w16,A,w11);
 not #(5) inverter_2_19_21_22(w13,w16);
 nmos #(4) nmos_1_3_20_22_23(w16,w17,A); //  
 nmos #(1) nmos_2_4_21_23_24(w17,vss,w11); //  
 pmos #(4) pmos_3_5_22_24_25(w16,vdd,A); //  
 pmos #(4) pmos_4_6_23_25_26(w16,vdd,w11); //  
 nmos #(5) nmos_1_7_24_26_27(w13,vss,w16); //  
 pmos #(5) pmos_2_8_25_27_28(w13,vdd,w16); //  
 nor #(4) Nor_1_26_28_29(w18,w12,w13);
 not #(8) inverter_2_27_29_30(w4,w18);
 nmos #(4) nmos_1_3_28_30_31(w18,vss,w12); //  
 nmos #(4) nmos_2_4_29_31_32(w18,vss,w13); //  
 pmos #(1) pmos_3_5_30_32_33(w19,vdd,w12); //  
 pmos #(4) pmos_4_6_31_33_34(w18,w19,w13); //  
 nmos #(8) nmos_1_7_32_34_35(w4,vss,w18); //  
 pmos #(8) pmos_2_8_33_35_36(w4,vdd,w18); //  
 nand #(4) Nand_1_36_37(w20,A,B);
 not #(4) inverter_2_37_38(w5,w20);
 nmos #(4) nmos_1_3_38_39(w20,w21,A); //  
 nmos #(1) nmos_2_4_39_40(w21,vss,B); //  
 pmos #(4) pmos_3_5_40_41(w20,vdd,A); //  
 pmos #(4) pmos_4_6_41_42(w20,vdd,B); //  
 nmos #(3) nmos_1_7_42_43(w5,vss,w20); //  
 pmos #(3) pmos_2_8_43_44(w5,vdd,w20); //  
 xor #(4) XOR_1_45(sum,w4,C);
 and #(4) And_2_46(w8,w4,C);
 not #(4) inverter_1_3_47(w22,w4);
 not #(4) inverter_2_4_48(w23,C);
 and #(5) And_3_5_49(w24,w22,C);
 and #(5) And_4_6_50(w25,w4,w23);
 or #(4) OR_5_7_51(sum,w24,w25);
 nmos #(4) nmos_1_6_8_52(w22,vss,w4); //  
 pmos #(4) pmos_2_7_9_53(w22,vdd,w4); //  
 nmos #(4) nmos_1_8_10_54(w23,vss,C); //  
 pmos #(4) pmos_2_9_11_55(w23,vdd,C); //  
 nand #(4) Nand_1_10_12_56(w26,w22,C);
 not #(5) inverter_2_11_13_57(w24,w26);
 nmos #(4) nmos_1_3_12_14_58(w26,w27,w22); //  
 nmos #(1) nmos_2_4_13_15_59(w27,vss,C); //  
 pmos #(4) pmos_3_5_14_16_60(w26,vdd,w22); //  
 pmos #(4) pmos_4_6_15_17_61(w26,vdd,C); //  
 nmos #(5) nmos_1_7_16_18_62(w24,vss,w26); //  
 pmos #(5) pmos_2_8_17_19_63(w24,vdd,w26); //  
 nand #(4) Nand_1_18_20_64(w28,w4,w23);
 not #(5) inverter_2_19_21_65(w25,w28);
 nmos #(4) nmos_1_3_20_22_66(w28,w29,w4); //  
 nmos #(1) nmos_2_4_21_23_67(w29,vss,w23); //  
 pmos #(4) pmos_3_5_22_24_68(w28,vdd,w4); //  
 pmos #(4) pmos_4_6_23_25_69(w28,vdd,w23); //  
 nmos #(5) nmos_1_7_24_26_70(w25,vss,w28); //  
 pmos #(5) pmos_2_8_25_27_71(w25,vdd,w28); //  
 nor #(4) Nor_1_26_28_72(w30,w24,w25);
 not #(3) inverter_2_27_29_73(sum,w30);
 nmos #(4) nmos_1_3_28_30_74(w30,vss,w24); //  
 nmos #(4) nmos_2_4_29_31_75(w30,vss,w25); //  
 pmos #(1) pmos_3_5_30_32_76(w31,vdd,w24); //  
 pmos #(4) pmos_4_6_31_33_77(w30,w31,w25); //  
 nmos #(3) nmos_1_7_32_34_78(sum,vss,w30); //  
 pmos #(3) pmos_2_8_33_35_79(sum,vdd,w30); //  
 nand #(4) Nand_1_36_80(w32,w4,C);
 not #(4) inverter_2_37_81(w8,w32);
 nmos #(4) nmos_1_3_38_82(w32,w33,w4); //  
 nmos #(1) nmos_2_4_39_83(w33,vss,C); //  
 pmos #(4) pmos_3_5_40_84(w32,vdd,w4); //  
 pmos #(4) pmos_4_6_41_85(w32,vdd,C); //  
 nmos #(3) nmos_1_7_42_86(w8,vss,w32); //  
 pmos #(3) pmos_2_8_43_87(w8,vdd,w32); //  
 nor #(4) Nor_1_88(w34,w8,w5);
 not #(3) inverter_2_89(carry,w34);
 nmos #(4) nmos_1_3_90(w34,vss,w8); //  
 nmos #(4) nmos_2_4_91(w34,vss,w5); //  
 pmos #(1) pmos_3_5_92(w35,vdd,w8); //  
 pmos #(4) pmos_4_6_93(w34,w35,w5); //  
 nmos #(2) nmos_1_7_94(carry,vss,w34); //  
 pmos #(2) pmos_2_8_95(carry,vdd,w34); //  
endmodule

// Simulation parameters in Verilog Format
always
#200 A=~A;
#400 B=~B;
#800 C=~C;

// Simulation parameters
// A CLK 1 1
// B CLK 2 2
// C CLK 4 4
