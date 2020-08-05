DSCH 3.5
VERSION 7/29/2020 12:28:32 PM
BB(-47,-54,194,115)
SYM  #full_adder
BB(110,45,150,85)
TITLE 157 55  #full_adder
MODEL 6000
PROP                                                                                                                                   
REC(115,50,30,30,r)
VIS 5
PIN(140,45,0.000,0.000)A
PIN(130,45,0.000,0.000)B
PIN(120,45,0.000,0.000)C
PIN(140,85,0.010,0.010)sum
PIN(130,85,0.010,0.032)carry
LIG(140,45,140,50)
LIG(130,45,130,50)
LIG(120,45,120,50)
LIG(140,80,140,85)
LIG(130,80,130,85)
LIG(145,50,115,50)
LIG(145,50,145,80)
LIG(145,80,115,80)
LIG(115,80,115,50)
VLG module full_adder( A,B,C,sum,carry);
VLG input A,B,C;
VLG output sum,carry;
VLG wire w4,w5,w8,w10,w11,w12,w13,w14;
VLG wire w15,w16,w17,w18,w19,w20,w21,w22;
VLG wire w23,w24,w25,w26,w27,w28,w29,w30;
VLG wire w31,w32,w33,w34,w35;
VLG or #(4) OR_1(carry,w8,w5);
VLG xor #(8) XOR_1_2(w4,A,B);
VLG and #(4) And_2_3(w5,A,B);
VLG not #(4) inverter_1_3_4(w10,A);
VLG not #(4) inverter_2_4_5(w11,B);
VLG and #(5) And_3_5_6(w12,w10,B);
VLG and #(5) And_4_6_7(w13,A,w11);
VLG or #(8) OR_5_7_8(w4,w12,w13);
VLG nmos #(4) nmos_1_6_8_9(w10,vss,A); //  
VLG pmos #(4) pmos_2_7_9_10(w10,vdd,A); //  
VLG nmos #(4) nmos_1_8_10_11(w11,vss,B); //  
VLG pmos #(4) pmos_2_9_11_12(w11,vdd,B); //  
VLG nand #(4) Nand_1_10_12_13(w14,w10,B);
VLG not #(5) inverter_2_11_13_14(w12,w14);
VLG nmos #(4) nmos_1_3_12_14_15(w14,w15,w10); //  
VLG nmos #(1) nmos_2_4_13_15_16(w15,vss,B); //  
VLG pmos #(4) pmos_3_5_14_16_17(w14,vdd,w10); //  
VLG pmos #(4) pmos_4_6_15_17_18(w14,vdd,B); //  
VLG nmos #(5) nmos_1_7_16_18_19(w12,vss,w14); //  
VLG pmos #(5) pmos_2_8_17_19_20(w12,vdd,w14); //  
VLG nand #(4) Nand_1_18_20_21(w16,A,w11);
VLG not #(5) inverter_2_19_21_22(w13,w16);
VLG nmos #(4) nmos_1_3_20_22_23(w16,w17,A); //  
VLG nmos #(1) nmos_2_4_21_23_24(w17,vss,w11); //  
VLG pmos #(4) pmos_3_5_22_24_25(w16,vdd,A); //  
VLG pmos #(4) pmos_4_6_23_25_26(w16,vdd,w11); //  
VLG nmos #(5) nmos_1_7_24_26_27(w13,vss,w16); //  
VLG pmos #(5) pmos_2_8_25_27_28(w13,vdd,w16); //  
VLG nor #(4) Nor_1_26_28_29(w18,w12,w13);
VLG not #(8) inverter_2_27_29_30(w4,w18);
VLG nmos #(4) nmos_1_3_28_30_31(w18,vss,w12); //  
VLG nmos #(4) nmos_2_4_29_31_32(w18,vss,w13); //  
VLG pmos #(1) pmos_3_5_30_32_33(w19,vdd,w12); //  
VLG pmos #(4) pmos_4_6_31_33_34(w18,w19,w13); //  
VLG nmos #(8) nmos_1_7_32_34_35(w4,vss,w18); //  
VLG pmos #(8) pmos_2_8_33_35_36(w4,vdd,w18); //  
VLG nand #(4) Nand_1_36_37(w20,A,B);
VLG not #(4) inverter_2_37_38(w5,w20);
VLG nmos #(4) nmos_1_3_38_39(w20,w21,A); //  
VLG nmos #(1) nmos_2_4_39_40(w21,vss,B); //  
VLG pmos #(4) pmos_3_5_40_41(w20,vdd,A); //  
VLG pmos #(4) pmos_4_6_41_42(w20,vdd,B); //  
VLG nmos #(3) nmos_1_7_42_43(w5,vss,w20); //  
VLG pmos #(3) pmos_2_8_43_44(w5,vdd,w20); //  
VLG xor #(4) XOR_1_45(sum,w4,C);
VLG and #(4) And_2_46(w8,w4,C);
VLG not #(4) inverter_1_3_47(w22,w4);
VLG not #(4) inverter_2_4_48(w23,C);
VLG and #(5) And_3_5_49(w24,w22,C);
VLG and #(5) And_4_6_50(w25,w4,w23);
VLG or #(4) OR_5_7_51(sum,w24,w25);
VLG nmos #(4) nmos_1_6_8_52(w22,vss,w4); //  
VLG pmos #(4) pmos_2_7_9_53(w22,vdd,w4); //  
VLG nmos #(4) nmos_1_8_10_54(w23,vss,C); //  
VLG pmos #(4) pmos_2_9_11_55(w23,vdd,C); //  
VLG nand #(4) Nand_1_10_12_56(w26,w22,C);
VLG not #(5) inverter_2_11_13_57(w24,w26);
VLG nmos #(4) nmos_1_3_12_14_58(w26,w27,w22); //  
VLG nmos #(1) nmos_2_4_13_15_59(w27,vss,C); //  
VLG pmos #(4) pmos_3_5_14_16_60(w26,vdd,w22); //  
VLG pmos #(4) pmos_4_6_15_17_61(w26,vdd,C); //  
VLG nmos #(5) nmos_1_7_16_18_62(w24,vss,w26); //  
VLG pmos #(5) pmos_2_8_17_19_63(w24,vdd,w26); //  
VLG nand #(4) Nand_1_18_20_64(w28,w4,w23);
VLG not #(5) inverter_2_19_21_65(w25,w28);
VLG nmos #(4) nmos_1_3_20_22_66(w28,w29,w4); //  
VLG nmos #(1) nmos_2_4_21_23_67(w29,vss,w23); //  
VLG pmos #(4) pmos_3_5_22_24_68(w28,vdd,w4); //  
VLG pmos #(4) pmos_4_6_23_25_69(w28,vdd,w23); //  
VLG nmos #(5) nmos_1_7_24_26_70(w25,vss,w28); //  
VLG pmos #(5) pmos_2_8_25_27_71(w25,vdd,w28); //  
VLG nor #(4) Nor_1_26_28_72(w30,w24,w25);
VLG not #(3) inverter_2_27_29_73(sum,w30);
VLG nmos #(4) nmos_1_3_28_30_74(w30,vss,w24); //  
VLG nmos #(4) nmos_2_4_29_31_75(w30,vss,w25); //  
VLG pmos #(1) pmos_3_5_30_32_76(w31,vdd,w24); //  
VLG pmos #(4) pmos_4_6_31_33_77(w30,w31,w25); //  
VLG nmos #(3) nmos_1_7_32_34_78(sum,vss,w30); //  
VLG pmos #(3) pmos_2_8_33_35_79(sum,vdd,w30); //  
VLG nand #(4) Nand_1_36_80(w32,w4,C);
VLG not #(4) inverter_2_37_81(w8,w32);
VLG nmos #(4) nmos_1_3_38_82(w32,w33,w4); //  
VLG nmos #(1) nmos_2_4_39_83(w33,vss,C); //  
VLG pmos #(4) pmos_3_5_40_84(w32,vdd,w4); //  
VLG pmos #(4) pmos_4_6_41_85(w32,vdd,C); //  
VLG nmos #(3) nmos_1_7_42_86(w8,vss,w32); //  
VLG pmos #(3) pmos_2_8_43_87(w8,vdd,w32); //  
VLG nor #(4) Nor_1_88(w34,w8,w5);
VLG not #(3) inverter_2_89(carry,w34);
VLG nmos #(4) nmos_1_3_90(w34,vss,w8); //  
VLG nmos #(4) nmos_2_4_91(w34,vss,w5); //  
VLG pmos #(1) pmos_3_5_92(w35,vdd,w8); //  
VLG pmos #(4) pmos_4_6_93(w34,w35,w5); //  
VLG nmos #(2) nmos_1_7_94(carry,vss,w34); //  
VLG pmos #(2) pmos_2_8_95(carry,vdd,w34); //  
VLG endmodule
FSYM
SYM  #full_adder
BB(55,45,95,85)
TITLE 102 55  #full_adder
MODEL 6000
PROP                                                                                                                                   
REC(60,50,30,30,r)
VIS 5
PIN(85,45,0.000,0.000)A
PIN(75,45,0.000,0.000)B
PIN(65,45,0.000,0.000)C
PIN(85,85,0.010,0.010)sum
PIN(75,85,0.010,0.032)carry
LIG(85,45,85,50)
LIG(75,45,75,50)
LIG(65,45,65,50)
LIG(85,80,85,85)
LIG(75,80,75,85)
LIG(90,50,60,50)
LIG(90,50,90,80)
LIG(90,80,60,80)
LIG(60,80,60,50)
VLG module full_adder( A,B,C,sum,carry);
VLG input A,B,C;
VLG output sum,carry;
VLG wire w4,w5,w8,w10,w11,w12,w13,w14;
VLG wire w15,w16,w17,w18,w19,w20,w21,w22;
VLG wire w23,w24,w25,w26,w27,w28,w29,w30;
VLG wire w31,w32,w33,w34,w35;
VLG or #(4) OR_1(carry,w8,w5);
VLG xor #(8) XOR_1_2(w4,A,B);
VLG and #(4) And_2_3(w5,A,B);
VLG not #(4) inverter_1_3_4(w10,A);
VLG not #(4) inverter_2_4_5(w11,B);
VLG and #(5) And_3_5_6(w12,w10,B);
VLG and #(5) And_4_6_7(w13,A,w11);
VLG or #(8) OR_5_7_8(w4,w12,w13);
VLG nmos #(4) nmos_1_6_8_9(w10,vss,A); //  
VLG pmos #(4) pmos_2_7_9_10(w10,vdd,A); //  
VLG nmos #(4) nmos_1_8_10_11(w11,vss,B); //  
VLG pmos #(4) pmos_2_9_11_12(w11,vdd,B); //  
VLG nand #(4) Nand_1_10_12_13(w14,w10,B);
VLG not #(5) inverter_2_11_13_14(w12,w14);
VLG nmos #(4) nmos_1_3_12_14_15(w14,w15,w10); //  
VLG nmos #(1) nmos_2_4_13_15_16(w15,vss,B); //  
VLG pmos #(4) pmos_3_5_14_16_17(w14,vdd,w10); //  
VLG pmos #(4) pmos_4_6_15_17_18(w14,vdd,B); //  
VLG nmos #(5) nmos_1_7_16_18_19(w12,vss,w14); //  
VLG pmos #(5) pmos_2_8_17_19_20(w12,vdd,w14); //  
VLG nand #(4) Nand_1_18_20_21(w16,A,w11);
VLG not #(5) inverter_2_19_21_22(w13,w16);
VLG nmos #(4) nmos_1_3_20_22_23(w16,w17,A); //  
VLG nmos #(1) nmos_2_4_21_23_24(w17,vss,w11); //  
VLG pmos #(4) pmos_3_5_22_24_25(w16,vdd,A); //  
VLG pmos #(4) pmos_4_6_23_25_26(w16,vdd,w11); //  
VLG nmos #(5) nmos_1_7_24_26_27(w13,vss,w16); //  
VLG pmos #(5) pmos_2_8_25_27_28(w13,vdd,w16); //  
VLG nor #(4) Nor_1_26_28_29(w18,w12,w13);
VLG not #(8) inverter_2_27_29_30(w4,w18);
VLG nmos #(4) nmos_1_3_28_30_31(w18,vss,w12); //  
VLG nmos #(4) nmos_2_4_29_31_32(w18,vss,w13); //  
VLG pmos #(1) pmos_3_5_30_32_33(w19,vdd,w12); //  
VLG pmos #(4) pmos_4_6_31_33_34(w18,w19,w13); //  
VLG nmos #(8) nmos_1_7_32_34_35(w4,vss,w18); //  
VLG pmos #(8) pmos_2_8_33_35_36(w4,vdd,w18); //  
VLG nand #(4) Nand_1_36_37(w20,A,B);
VLG not #(4) inverter_2_37_38(w5,w20);
VLG nmos #(4) nmos_1_3_38_39(w20,w21,A); //  
VLG nmos #(1) nmos_2_4_39_40(w21,vss,B); //  
VLG pmos #(4) pmos_3_5_40_41(w20,vdd,A); //  
VLG pmos #(4) pmos_4_6_41_42(w20,vdd,B); //  
VLG nmos #(3) nmos_1_7_42_43(w5,vss,w20); //  
VLG pmos #(3) pmos_2_8_43_44(w5,vdd,w20); //  
VLG xor #(4) XOR_1_45(sum,w4,C);
VLG and #(4) And_2_46(w8,w4,C);
VLG not #(4) inverter_1_3_47(w22,w4);
VLG not #(4) inverter_2_4_48(w23,C);
VLG and #(5) And_3_5_49(w24,w22,C);
VLG and #(5) And_4_6_50(w25,w4,w23);
VLG or #(4) OR_5_7_51(sum,w24,w25);
VLG nmos #(4) nmos_1_6_8_52(w22,vss,w4); //  
VLG pmos #(4) pmos_2_7_9_53(w22,vdd,w4); //  
VLG nmos #(4) nmos_1_8_10_54(w23,vss,C); //  
VLG pmos #(4) pmos_2_9_11_55(w23,vdd,C); //  
VLG nand #(4) Nand_1_10_12_56(w26,w22,C);
VLG not #(5) inverter_2_11_13_57(w24,w26);
VLG nmos #(4) nmos_1_3_12_14_58(w26,w27,w22); //  
VLG nmos #(1) nmos_2_4_13_15_59(w27,vss,C); //  
VLG pmos #(4) pmos_3_5_14_16_60(w26,vdd,w22); //  
VLG pmos #(4) pmos_4_6_15_17_61(w26,vdd,C); //  
VLG nmos #(5) nmos_1_7_16_18_62(w24,vss,w26); //  
VLG pmos #(5) pmos_2_8_17_19_63(w24,vdd,w26); //  
VLG nand #(4) Nand_1_18_20_64(w28,w4,w23);
VLG not #(5) inverter_2_19_21_65(w25,w28);
VLG nmos #(4) nmos_1_3_20_22_66(w28,w29,w4); //  
VLG nmos #(1) nmos_2_4_21_23_67(w29,vss,w23); //  
VLG pmos #(4) pmos_3_5_22_24_68(w28,vdd,w4); //  
VLG pmos #(4) pmos_4_6_23_25_69(w28,vdd,w23); //  
VLG nmos #(5) nmos_1_7_24_26_70(w25,vss,w28); //  
VLG pmos #(5) pmos_2_8_25_27_71(w25,vdd,w28); //  
VLG nor #(4) Nor_1_26_28_72(w30,w24,w25);
VLG not #(3) inverter_2_27_29_73(sum,w30);
VLG nmos #(4) nmos_1_3_28_30_74(w30,vss,w24); //  
VLG nmos #(4) nmos_2_4_29_31_75(w30,vss,w25); //  
VLG pmos #(1) pmos_3_5_30_32_76(w31,vdd,w24); //  
VLG pmos #(4) pmos_4_6_31_33_77(w30,w31,w25); //  
VLG nmos #(3) nmos_1_7_32_34_78(sum,vss,w30); //  
VLG pmos #(3) pmos_2_8_33_35_79(sum,vdd,w30); //  
VLG nand #(4) Nand_1_36_80(w32,w4,C);
VLG not #(4) inverter_2_37_81(w8,w32);
VLG nmos #(4) nmos_1_3_38_82(w32,w33,w4); //  
VLG nmos #(1) nmos_2_4_39_83(w33,vss,C); //  
VLG pmos #(4) pmos_3_5_40_84(w32,vdd,w4); //  
VLG pmos #(4) pmos_4_6_41_85(w32,vdd,C); //  
VLG nmos #(3) nmos_1_7_42_86(w8,vss,w32); //  
VLG pmos #(3) pmos_2_8_43_87(w8,vdd,w32); //  
VLG nor #(4) Nor_1_88(w34,w8,w5);
VLG not #(3) inverter_2_89(carry,w34);
VLG nmos #(4) nmos_1_3_90(w34,vss,w8); //  
VLG nmos #(4) nmos_2_4_91(w34,vss,w5); //  
VLG pmos #(1) pmos_3_5_92(w35,vdd,w8); //  
VLG pmos #(4) pmos_4_6_93(w34,w35,w5); //  
VLG nmos #(2) nmos_1_7_94(carry,vss,w34); //  
VLG pmos #(2) pmos_2_8_95(carry,vdd,w34); //  
VLG endmodule
FSYM
SYM  #full_adder
BB(-10,45,30,85)
TITLE 37 55  #full_adder
MODEL 6000
PROP                                                                                                                                   
REC(-5,50,30,30,r)
VIS 5
PIN(20,45,0.000,0.000)A
PIN(10,45,0.000,0.000)B
PIN(0,45,0.000,0.000)C
PIN(20,85,0.010,0.010)sum
PIN(10,85,0.010,0.008)carry
LIG(20,45,20,50)
LIG(10,45,10,50)
LIG(0,45,0,50)
LIG(20,80,20,85)
LIG(10,80,10,85)
LIG(25,50,-5,50)
LIG(25,50,25,80)
LIG(25,80,-5,80)
LIG(-5,80,-5,50)
VLG module full_adder( A,B,C,sum,carry);
VLG input A,B,C;
VLG output sum,carry;
VLG wire w4,w5,w8,w10,w11,w12,w13,w14;
VLG wire w15,w16,w17,w18,w19,w20,w21,w22;
VLG wire w23,w24,w25,w26,w27,w28,w29,w30;
VLG wire w31,w32,w33,w34,w35;
VLG or #(4) OR_1(carry,w8,w5);
VLG xor #(8) XOR_1_2(w4,A,B);
VLG and #(4) And_2_3(w5,A,B);
VLG not #(4) inverter_1_3_4(w10,A);
VLG not #(4) inverter_2_4_5(w11,B);
VLG and #(5) And_3_5_6(w12,w10,B);
VLG and #(5) And_4_6_7(w13,A,w11);
VLG or #(8) OR_5_7_8(w4,w12,w13);
VLG nmos #(4) nmos_1_6_8_9(w10,vss,A); //  
VLG pmos #(4) pmos_2_7_9_10(w10,vdd,A); //  
VLG nmos #(4) nmos_1_8_10_11(w11,vss,B); //  
VLG pmos #(4) pmos_2_9_11_12(w11,vdd,B); //  
VLG nand #(4) Nand_1_10_12_13(w14,w10,B);
VLG not #(5) inverter_2_11_13_14(w12,w14);
VLG nmos #(4) nmos_1_3_12_14_15(w14,w15,w10); //  
VLG nmos #(1) nmos_2_4_13_15_16(w15,vss,B); //  
VLG pmos #(4) pmos_3_5_14_16_17(w14,vdd,w10); //  
VLG pmos #(4) pmos_4_6_15_17_18(w14,vdd,B); //  
VLG nmos #(5) nmos_1_7_16_18_19(w12,vss,w14); //  
VLG pmos #(5) pmos_2_8_17_19_20(w12,vdd,w14); //  
VLG nand #(4) Nand_1_18_20_21(w16,A,w11);
VLG not #(5) inverter_2_19_21_22(w13,w16);
VLG nmos #(4) nmos_1_3_20_22_23(w16,w17,A); //  
VLG nmos #(1) nmos_2_4_21_23_24(w17,vss,w11); //  
VLG pmos #(4) pmos_3_5_22_24_25(w16,vdd,A); //  
VLG pmos #(4) pmos_4_6_23_25_26(w16,vdd,w11); //  
VLG nmos #(5) nmos_1_7_24_26_27(w13,vss,w16); //  
VLG pmos #(5) pmos_2_8_25_27_28(w13,vdd,w16); //  
VLG nor #(4) Nor_1_26_28_29(w18,w12,w13);
VLG not #(8) inverter_2_27_29_30(w4,w18);
VLG nmos #(4) nmos_1_3_28_30_31(w18,vss,w12); //  
VLG nmos #(4) nmos_2_4_29_31_32(w18,vss,w13); //  
VLG pmos #(1) pmos_3_5_30_32_33(w19,vdd,w12); //  
VLG pmos #(4) pmos_4_6_31_33_34(w18,w19,w13); //  
VLG nmos #(8) nmos_1_7_32_34_35(w4,vss,w18); //  
VLG pmos #(8) pmos_2_8_33_35_36(w4,vdd,w18); //  
VLG nand #(4) Nand_1_36_37(w20,A,B);
VLG not #(4) inverter_2_37_38(w5,w20);
VLG nmos #(4) nmos_1_3_38_39(w20,w21,A); //  
VLG nmos #(1) nmos_2_4_39_40(w21,vss,B); //  
VLG pmos #(4) pmos_3_5_40_41(w20,vdd,A); //  
VLG pmos #(4) pmos_4_6_41_42(w20,vdd,B); //  
VLG nmos #(3) nmos_1_7_42_43(w5,vss,w20); //  
VLG pmos #(3) pmos_2_8_43_44(w5,vdd,w20); //  
VLG xor #(4) XOR_1_45(sum,w4,C);
VLG and #(4) And_2_46(w8,w4,C);
VLG not #(4) inverter_1_3_47(w22,w4);
VLG not #(4) inverter_2_4_48(w23,C);
VLG and #(5) And_3_5_49(w24,w22,C);
VLG and #(5) And_4_6_50(w25,w4,w23);
VLG or #(4) OR_5_7_51(sum,w24,w25);
VLG nmos #(4) nmos_1_6_8_52(w22,vss,w4); //  
VLG pmos #(4) pmos_2_7_9_53(w22,vdd,w4); //  
VLG nmos #(4) nmos_1_8_10_54(w23,vss,C); //  
VLG pmos #(4) pmos_2_9_11_55(w23,vdd,C); //  
VLG nand #(4) Nand_1_10_12_56(w26,w22,C);
VLG not #(5) inverter_2_11_13_57(w24,w26);
VLG nmos #(4) nmos_1_3_12_14_58(w26,w27,w22); //  
VLG nmos #(1) nmos_2_4_13_15_59(w27,vss,C); //  
VLG pmos #(4) pmos_3_5_14_16_60(w26,vdd,w22); //  
VLG pmos #(4) pmos_4_6_15_17_61(w26,vdd,C); //  
VLG nmos #(5) nmos_1_7_16_18_62(w24,vss,w26); //  
VLG pmos #(5) pmos_2_8_17_19_63(w24,vdd,w26); //  
VLG nand #(4) Nand_1_18_20_64(w28,w4,w23);
VLG not #(5) inverter_2_19_21_65(w25,w28);
VLG nmos #(4) nmos_1_3_20_22_66(w28,w29,w4); //  
VLG nmos #(1) nmos_2_4_21_23_67(w29,vss,w23); //  
VLG pmos #(4) pmos_3_5_22_24_68(w28,vdd,w4); //  
VLG pmos #(4) pmos_4_6_23_25_69(w28,vdd,w23); //  
VLG nmos #(5) nmos_1_7_24_26_70(w25,vss,w28); //  
VLG pmos #(5) pmos_2_8_25_27_71(w25,vdd,w28); //  
VLG nor #(4) Nor_1_26_28_72(w30,w24,w25);
VLG not #(3) inverter_2_27_29_73(sum,w30);
VLG nmos #(4) nmos_1_3_28_30_74(w30,vss,w24); //  
VLG nmos #(4) nmos_2_4_29_31_75(w30,vss,w25); //  
VLG pmos #(1) pmos_3_5_30_32_76(w31,vdd,w24); //  
VLG pmos #(4) pmos_4_6_31_33_77(w30,w31,w25); //  
VLG nmos #(3) nmos_1_7_32_34_78(sum,vss,w30); //  
VLG pmos #(3) pmos_2_8_33_35_79(sum,vdd,w30); //  
VLG nand #(4) Nand_1_36_80(w32,w4,C);
VLG not #(4) inverter_2_37_81(w8,w32);
VLG nmos #(4) nmos_1_3_38_82(w32,w33,w4); //  
VLG nmos #(1) nmos_2_4_39_83(w33,vss,C); //  
VLG pmos #(4) pmos_3_5_40_84(w32,vdd,w4); //  
VLG pmos #(4) pmos_4_6_41_85(w32,vdd,C); //  
VLG nmos #(3) nmos_1_7_42_86(w8,vss,w32); //  
VLG pmos #(3) pmos_2_8_43_87(w8,vdd,w32); //  
VLG nor #(4) Nor_1_88(w34,w8,w5);
VLG not #(3) inverter_2_89(carry,w34);
VLG nmos #(4) nmos_1_3_90(w34,vss,w8); //  
VLG nmos #(4) nmos_2_4_91(w34,vss,w5); //  
VLG pmos #(1) pmos_3_5_92(w35,vdd,w8); //  
VLG pmos #(4) pmos_4_6_93(w34,w35,w5); //  
VLG nmos #(2) nmos_1_7_94(carry,vss,w34); //  
VLG pmos #(2) pmos_2_8_95(carry,vdd,w34); //  
VLG endmodule
FSYM
SYM  #button
BB(121,-54,129,-45)
TITLE 125 -50  #B1
MODEL 59
PROP                                                                                                                                   
REC(122,-53,6,6,r)
VIS 1
PIN(125,-45,0.000,0.000)B1
LIG(125,-46,125,-45)
LIG(121,-54,129,-54)
LIG(121,-46,121,-54)
LIG(129,-46,121,-46)
LIG(129,-54,129,-46)
LIG(122,-53,128,-53)
LIG(122,-47,122,-53)
LIG(128,-47,122,-47)
LIG(128,-53,128,-47)
FSYM
SYM  #button
BB(111,-54,119,-45)
TITLE 115 -50  #A1
MODEL 59
PROP                                                                                                                                   
REC(112,-53,6,6,r)
VIS 1
PIN(115,-45,0.000,0.000)A1
LIG(115,-46,115,-45)
LIG(111,-54,119,-54)
LIG(111,-46,111,-54)
LIG(119,-46,111,-46)
LIG(119,-54,119,-46)
LIG(112,-53,118,-53)
LIG(112,-47,112,-53)
LIG(118,-47,112,-47)
LIG(118,-53,118,-47)
FSYM
SYM  #button
BB(185,-34,194,-26)
TITLE 190 -30  #button3
MODEL 59
PROP                                                                                                                                   
REC(187,-33,6,6,r)
VIS 1
PIN(185,-30,0.000,0.000)in3
LIG(186,-30,185,-30)
LIG(194,-34,194,-26)
LIG(186,-34,194,-34)
LIG(186,-26,186,-34)
LIG(194,-26,186,-26)
LIG(193,-33,193,-27)
LIG(187,-33,193,-33)
LIG(187,-27,187,-33)
LIG(193,-27,187,-27)
FSYM
SYM  #button
BB(51,-54,59,-45)
TITLE 55 -50  #A2
MODEL 59
PROP                                                                                                                                   
REC(52,-53,6,6,r)
VIS 1
PIN(55,-45,0.000,0.000)A2
LIG(55,-46,55,-45)
LIG(51,-54,59,-54)
LIG(51,-46,51,-54)
LIG(59,-46,51,-46)
LIG(59,-54,59,-46)
LIG(52,-53,58,-53)
LIG(52,-47,52,-53)
LIG(58,-47,52,-47)
LIG(58,-53,58,-47)
FSYM
SYM  #button
BB(66,-54,74,-45)
TITLE 70 -50  #B2
MODEL 59
PROP                                                                                                                                   
REC(67,-53,6,6,r)
VIS 1
PIN(70,-45,0.000,0.000)B2
LIG(70,-46,70,-45)
LIG(66,-54,74,-54)
LIG(66,-46,66,-54)
LIG(74,-46,66,-46)
LIG(74,-54,74,-46)
LIG(67,-53,73,-53)
LIG(67,-47,67,-53)
LIG(73,-47,67,-47)
LIG(73,-53,73,-47)
FSYM
SYM  #button
BB(-4,-54,4,-45)
TITLE 0 -50  #A3
MODEL 59
PROP                                                                                                                                   
REC(-3,-53,6,6,r)
VIS 1
PIN(0,-45,0.000,0.000)A3
LIG(0,-46,0,-45)
LIG(-4,-54,4,-54)
LIG(-4,-46,-4,-54)
LIG(4,-46,-4,-46)
LIG(4,-54,4,-46)
LIG(-3,-53,3,-53)
LIG(-3,-47,-3,-53)
LIG(3,-47,-3,-47)
LIG(3,-53,3,-47)
FSYM
SYM  #button
BB(6,-54,14,-45)
TITLE 10 -50  #B3
MODEL 59
PROP                                                                                                                                   
REC(7,-53,6,6,r)
VIS 1
PIN(10,-45,0.000,0.000)B3
LIG(10,-46,10,-45)
LIG(6,-54,14,-54)
LIG(6,-46,6,-54)
LIG(14,-46,6,-46)
LIG(14,-54,14,-46)
LIG(7,-53,13,-53)
LIG(7,-47,7,-53)
LIG(13,-47,7,-47)
LIG(13,-53,13,-47)
FSYM
SYM  #XOR
BB(0,-20,30,20)
TITLE 37 -10  #XOR
MODEL 6000
PROP                                                                                                                                   
REC(5,-15,20,30,r)
VIS 5
PIN(20,-20,0.000,0.000)A
PIN(10,-20,0.000,0.000)B
PIN(20,20,0.010,0.032)XOR
LIG(20,-20,20,-15)
LIG(10,-20,10,-15)
LIG(20,15,20,20)
LIG(25,-15,5,-15)
LIG(25,-15,25,15)
LIG(25,15,5,15)
LIG(5,15,5,-15)
VLG module XOR( A,B,XOR);
VLG input A,B;
VLG output XOR;
VLG wire w3,w5,w6,w7,w9,w10,w11,w12;
VLG wire w13,w14;
VLG not #(4) inverter_1(w3,A);
VLG not #(4) inverter_2(w5,B);
VLG and #(4) And_3(w6,w3,B);
VLG and #(4) And_4(w7,A,w5);
VLG or #(4) OR_5(XOR,w6,w7);
VLG nmos #(3) nmos_1_6(w3,vss,A); //  
VLG pmos #(3) pmos_2_7(w3,vdd,A); //  
VLG nmos #(3) nmos_1_8(w5,vss,B); //  
VLG pmos #(3) pmos_2_9(w5,vdd,B); //  
VLG nand #(4) Nand_1_10(w9,w3,B);
VLG not #(3) inverter_2_11(w6,w9);
VLG nmos #(4) nmos_1_3_12(w9,w10,w3); //  
VLG nmos #(1) nmos_2_4_13(w10,vss,B); //  
VLG pmos #(4) pmos_3_5_14(w9,vdd,w3); //  
VLG pmos #(4) pmos_4_6_15(w9,vdd,B); //  
VLG nmos #(3) nmos_1_7_16(w6,vss,w9); //  
VLG pmos #(3) pmos_2_8_17(w6,vdd,w9); //  
VLG nand #(4) Nand_1_18(w11,A,w5);
VLG not #(3) inverter_2_19(w7,w11);
VLG nmos #(4) nmos_1_3_20(w11,w12,A); //  
VLG nmos #(1) nmos_2_4_21(w12,vss,w5); //  
VLG pmos #(4) pmos_3_5_22(w11,vdd,A); //  
VLG pmos #(4) pmos_4_6_23(w11,vdd,w5); //  
VLG nmos #(3) nmos_1_7_24(w7,vss,w11); //  
VLG pmos #(3) pmos_2_8_25(w7,vdd,w11); //  
VLG nor #(4) Nor_1_26(w13,w6,w7);
VLG not #(3) inverter_2_27(XOR,w13);
VLG nmos #(4) nmos_1_3_28(w13,vss,w6); //  
VLG nmos #(4) nmos_2_4_29(w13,vss,w7); //  
VLG pmos #(1) pmos_3_5_30(w14,vdd,w6); //  
VLG pmos #(4) pmos_4_6_31(w13,w14,w7); //  
VLG nmos #(2) nmos_1_7_32(XOR,vss,w13); //  
VLG pmos #(2) pmos_2_8_33(XOR,vdd,w13); //  
VLG endmodule
FSYM
SYM  #XOR
BB(60,-15,90,25)
TITLE 97 -5  #XOR
MODEL 6000
PROP                                                                                                                                   
REC(65,-10,20,30,r)
VIS 5
PIN(80,-15,0.000,0.000)A
PIN(70,-15,0.000,0.000)B
PIN(80,25,0.010,0.032)XOR
LIG(80,-15,80,-10)
LIG(70,-15,70,-10)
LIG(80,20,80,25)
LIG(85,-10,65,-10)
LIG(85,-10,85,20)
LIG(85,20,65,20)
LIG(65,20,65,-10)
VLG module XOR( A,B,XOR);
VLG input A,B;
VLG output XOR;
VLG wire w3,w5,w6,w7,w9,w10,w11,w12;
VLG wire w13,w14;
VLG not #(4) inverter_1(w3,A);
VLG not #(4) inverter_2(w5,B);
VLG and #(4) And_3(w6,w3,B);
VLG and #(4) And_4(w7,A,w5);
VLG or #(4) OR_5(XOR,w6,w7);
VLG nmos #(3) nmos_1_6(w3,vss,A); //  
VLG pmos #(3) pmos_2_7(w3,vdd,A); //  
VLG nmos #(3) nmos_1_8(w5,vss,B); //  
VLG pmos #(3) pmos_2_9(w5,vdd,B); //  
VLG nand #(4) Nand_1_10(w9,w3,B);
VLG not #(3) inverter_2_11(w6,w9);
VLG nmos #(4) nmos_1_3_12(w9,w10,w3); //  
VLG nmos #(1) nmos_2_4_13(w10,vss,B); //  
VLG pmos #(4) pmos_3_5_14(w9,vdd,w3); //  
VLG pmos #(4) pmos_4_6_15(w9,vdd,B); //  
VLG nmos #(3) nmos_1_7_16(w6,vss,w9); //  
VLG pmos #(3) pmos_2_8_17(w6,vdd,w9); //  
VLG nand #(4) Nand_1_18(w11,A,w5);
VLG not #(3) inverter_2_19(w7,w11);
VLG nmos #(4) nmos_1_3_20(w11,w12,A); //  
VLG nmos #(1) nmos_2_4_21(w12,vss,w5); //  
VLG pmos #(4) pmos_3_5_22(w11,vdd,A); //  
VLG pmos #(4) pmos_4_6_23(w11,vdd,w5); //  
VLG nmos #(3) nmos_1_7_24(w7,vss,w11); //  
VLG pmos #(3) pmos_2_8_25(w7,vdd,w11); //  
VLG nor #(4) Nor_1_26(w13,w6,w7);
VLG not #(3) inverter_2_27(XOR,w13);
VLG nmos #(4) nmos_1_3_28(w13,vss,w6); //  
VLG nmos #(4) nmos_2_4_29(w13,vss,w7); //  
VLG pmos #(1) pmos_3_5_30(w14,vdd,w6); //  
VLG pmos #(4) pmos_4_6_31(w13,w14,w7); //  
VLG nmos #(2) nmos_1_7_32(XOR,vss,w13); //  
VLG pmos #(2) pmos_2_8_33(XOR,vdd,w13); //  
VLG endmodule
FSYM
SYM  #XOR
BB(115,-15,145,25)
TITLE 152 -5  #XOR
MODEL 6000
PROP                                                                                                                                   
REC(120,-10,20,30,r)
VIS 5
PIN(135,-15,0.000,0.000)A
PIN(125,-15,0.000,0.000)B
PIN(135,25,0.010,0.032)XOR
LIG(135,-15,135,-10)
LIG(125,-15,125,-10)
LIG(135,20,135,25)
LIG(140,-10,120,-10)
LIG(140,-10,140,20)
LIG(140,20,120,20)
LIG(120,20,120,-10)
VLG module XOR( A,B,XOR);
VLG input A,B;
VLG output XOR;
VLG wire w3,w5,w6,w7,w9,w10,w11,w12;
VLG wire w13,w14;
VLG not #(4) inverter_1(w3,A);
VLG not #(4) inverter_2(w5,B);
VLG and #(4) And_3(w6,w3,B);
VLG and #(4) And_4(w7,A,w5);
VLG or #(4) OR_5(XOR,w6,w7);
VLG nmos #(3) nmos_1_6(w3,vss,A); //  
VLG pmos #(3) pmos_2_7(w3,vdd,A); //  
VLG nmos #(3) nmos_1_8(w5,vss,B); //  
VLG pmos #(3) pmos_2_9(w5,vdd,B); //  
VLG nand #(4) Nand_1_10(w9,w3,B);
VLG not #(3) inverter_2_11(w6,w9);
VLG nmos #(4) nmos_1_3_12(w9,w10,w3); //  
VLG nmos #(1) nmos_2_4_13(w10,vss,B); //  
VLG pmos #(4) pmos_3_5_14(w9,vdd,w3); //  
VLG pmos #(4) pmos_4_6_15(w9,vdd,B); //  
VLG nmos #(3) nmos_1_7_16(w6,vss,w9); //  
VLG pmos #(3) pmos_2_8_17(w6,vdd,w9); //  
VLG nand #(4) Nand_1_18(w11,A,w5);
VLG not #(3) inverter_2_19(w7,w11);
VLG nmos #(4) nmos_1_3_20(w11,w12,A); //  
VLG nmos #(1) nmos_2_4_21(w12,vss,w5); //  
VLG pmos #(4) pmos_3_5_22(w11,vdd,A); //  
VLG pmos #(4) pmos_4_6_23(w11,vdd,w5); //  
VLG nmos #(3) nmos_1_7_24(w7,vss,w11); //  
VLG pmos #(3) pmos_2_8_25(w7,vdd,w11); //  
VLG nor #(4) Nor_1_26(w13,w6,w7);
VLG not #(3) inverter_2_27(XOR,w13);
VLG nmos #(4) nmos_1_3_28(w13,vss,w6); //  
VLG nmos #(4) nmos_2_4_29(w13,vss,w7); //  
VLG pmos #(1) pmos_3_5_30(w14,vdd,w6); //  
VLG pmos #(4) pmos_4_6_31(w13,w14,w7); //  
VLG nmos #(2) nmos_1_7_32(XOR,vss,w13); //  
VLG pmos #(2) pmos_2_8_33(XOR,vdd,w13); //  
VLG endmodule
FSYM
SYM  #light
BB(168,80,174,94)
TITLE 170 94  #light1
MODEL 49
PROP                                                                                                                                   
REC(169,81,4,4,r)
VIS 1
PIN(170,95,0.000,0.000)out1
LIG(173,86,173,81)
LIG(173,81,172,80)
LIG(169,81,169,86)
LIG(172,91,172,88)
LIG(171,91,174,91)
LIG(171,93,173,91)
LIG(172,93,174,91)
LIG(168,88,174,88)
LIG(170,88,170,95)
LIG(168,86,168,88)
LIG(174,86,168,86)
LIG(174,88,174,86)
LIG(170,80,169,81)
LIG(172,80,170,80)
FSYM
SYM  #light
BB(93,100,99,114)
TITLE 95 114  #light2
MODEL 49
PROP                                                                                                                                   
REC(94,101,4,4,r)
VIS 1
PIN(95,115,0.000,0.000)out2
LIG(98,106,98,101)
LIG(98,101,97,100)
LIG(94,101,94,106)
LIG(97,111,97,108)
LIG(96,111,99,111)
LIG(96,113,98,111)
LIG(97,113,99,111)
LIG(93,108,99,108)
LIG(95,108,95,115)
LIG(93,106,93,108)
LIG(99,106,93,106)
LIG(99,108,99,106)
LIG(95,100,94,101)
LIG(97,100,95,100)
FSYM
SYM  #light
BB(-47,85,-41,99)
TITLE -45 99  #light3
MODEL 49
PROP                                                                                                                                   
REC(-46,86,4,4,r)
VIS 1
PIN(-45,100,0.000,0.000)out3
LIG(-42,91,-42,86)
LIG(-42,86,-43,85)
LIG(-46,86,-46,91)
LIG(-43,96,-43,93)
LIG(-44,96,-41,96)
LIG(-44,98,-42,96)
LIG(-43,98,-41,96)
LIG(-47,93,-41,93)
LIG(-45,93,-45,100)
LIG(-47,91,-47,93)
LIG(-41,91,-47,91)
LIG(-41,93,-41,91)
LIG(-45,85,-46,86)
LIG(-43,85,-45,85)
FSYM
SYM  #light
BB(28,100,34,114)
TITLE 30 114  #light4
MODEL 49
PROP                                                                                                                                   
REC(29,101,4,4,r)
VIS 1
PIN(30,115,0.000,0.000)out4
LIG(33,106,33,101)
LIG(33,101,32,100)
LIG(29,101,29,106)
LIG(32,111,32,108)
LIG(31,111,34,111)
LIG(31,113,33,111)
LIG(32,113,34,111)
LIG(28,108,34,108)
LIG(30,108,30,115)
LIG(28,106,28,108)
LIG(34,106,28,106)
LIG(34,108,34,106)
LIG(30,100,29,101)
LIG(32,100,30,100)
FSYM
CNC(165 -30)
CNC(20 -30)
CNC(80 -30)
CNC(135 -30)
LIG(185,-30,165,-30)
LIG(130,85,130,95)
LIG(130,95,105,95)
LIG(105,95,105,40)
LIG(105,40,85,40)
LIG(85,40,85,45)
LIG(75,85,75,100)
LIG(75,100,45,100)
LIG(45,100,45,40)
LIG(45,40,20,40)
LIG(20,40,20,45)
LIG(80,25,75,25)
LIG(75,25,75,45)
LIG(20,20,15,20)
LIG(15,20,15,45)
LIG(15,45,10,45)
LIG(140,45,165,45)
LIG(165,45,165,-30)
LIG(165,-30,135,-30)
LIG(20,-20,20,-30)
LIG(20,-30,-30,-30)
LIG(80,-15,80,-30)
LIG(80,-30,20,-30)
LIG(135,-15,135,-30)
LIG(135,-30,80,-30)
LIG(135,25,130,25)
LIG(130,25,130,45)
LIG(10,-20,10,-45)
LIG(70,-15,70,-45)
LIG(125,-15,125,-45)
LIG(0,-45,0,45)
LIG(55,-45,60,-45)
LIG(60,-45,60,45)
LIG(60,45,65,45)
LIG(115,-45,115,45)
LIG(115,45,120,45)
LIG(170,100,170,95)
LIG(-45,100,10,100)
LIG(10,100,10,85)
LIG(30,115,20,115)
LIG(20,115,20,85)
LIG(85,85,85,115)
LIG(85,115,95,115)
LIG(140,85,140,100)
LIG(140,100,170,100)
FFIG G:\VLSI course\Sir Software\LAB\Adder_subtractor.sch
