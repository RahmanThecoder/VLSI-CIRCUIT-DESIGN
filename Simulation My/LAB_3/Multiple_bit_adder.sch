DSCH 3.5
VERSION 7/29/2020 11:51:18 AM
BB(-39,-20,179,84)
SYM  #full_adder
BB(110,0,150,40)
TITLE 120 -7  #full_adder
MODEL 6000
PROP                                                                                                                                   
REC(115,5,30,30,r)
VIS 5
PIN(110,10,0.000,0.000)A
PIN(110,20,0.000,0.000)B
PIN(110,30,0.000,0.000)C
PIN(150,10,0.010,0.012)sum
PIN(150,20,0.010,0.010)carry
LIG(110,10,115,10)
LIG(110,20,115,20)
LIG(110,30,115,30)
LIG(145,10,150,10)
LIG(145,20,150,20)
LIG(115,5,115,35)
LIG(115,5,145,5)
LIG(145,5,145,35)
LIG(145,35,115,35)
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
BB(55,0,95,40)
TITLE 65 -7  #full_adder
MODEL 6000
PROP                                                                                                                                   
REC(60,5,30,30,r)
VIS 5
PIN(55,10,0.000,0.000)A
PIN(55,20,0.000,0.000)B
PIN(55,30,0.000,0.000)C
PIN(95,10,0.010,0.012)sum
PIN(95,20,0.010,0.032)carry
LIG(55,10,60,10)
LIG(55,20,60,20)
LIG(55,30,60,30)
LIG(90,10,95,10)
LIG(90,20,95,20)
LIG(60,5,60,35)
LIG(60,5,90,5)
LIG(90,5,90,35)
LIG(90,35,60,35)
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
BB(-5,0,35,40)
TITLE 5 -7  #full_adder
MODEL 6000
PROP                                                                                                                                   
REC(0,5,30,30,r)
VIS 5
PIN(-5,10,0.000,0.000)A
PIN(-5,20,0.000,0.000)B
PIN(-5,30,0.000,0.000)C
PIN(35,10,0.010,0.012)sum
PIN(35,20,0.010,0.032)carry
LIG(-5,10,0,10)
LIG(-5,20,0,20)
LIG(-5,30,0,30)
LIG(30,10,35,10)
LIG(30,20,35,20)
LIG(0,5,0,35)
LIG(0,5,30,5)
LIG(30,5,30,35)
LIG(30,35,0,35)
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
BB(-39,6,-30,14)
TITLE -35 10  #button1
MODEL 59
PROP                                                                                                                                   
REC(-38,7,6,6,r)
VIS 1
PIN(-30,10,0.000,0.000)in1
LIG(-31,10,-30,10)
LIG(-39,14,-39,6)
LIG(-31,14,-39,14)
LIG(-31,6,-31,14)
LIG(-39,6,-31,6)
LIG(-38,13,-38,7)
LIG(-32,13,-38,13)
LIG(-32,7,-32,13)
LIG(-38,7,-32,7)
FSYM
SYM  #button
BB(-39,16,-30,24)
TITLE -35 20  #button2
MODEL 59
PROP                                                                                                                                   
REC(-38,17,6,6,r)
VIS 1
PIN(-30,20,0.000,0.000)in2
LIG(-31,20,-30,20)
LIG(-39,24,-39,16)
LIG(-31,24,-39,24)
LIG(-31,16,-31,24)
LIG(-39,16,-31,16)
LIG(-38,23,-38,17)
LIG(-32,23,-38,23)
LIG(-32,17,-32,23)
LIG(-38,17,-32,17)
FSYM
SYM  #vss
BB(-30,37,-20,45)
TITLE -26 42  #vss
MODEL 0
PROP                                                                                                                                    
REC(-30,35,0,0,b)
VIS 0
PIN(-25,35,0.000,0.000)vss
LIG(-25,35,-25,40)
LIG(-30,40,-20,40)
LIG(-30,43,-28,40)
LIG(-28,43,-26,40)
LIG(-26,43,-24,40)
LIG(-24,43,-22,40)
FSYM
SYM  #button
BB(16,61,25,69)
TITLE 20 65  #button3
MODEL 59
PROP                                                                                                                                   
REC(17,62,6,6,r)
VIS 1
PIN(25,65,0.000,0.000)in3
LIG(24,65,25,65)
LIG(16,69,16,61)
LIG(24,69,16,69)
LIG(24,61,24,69)
LIG(16,61,24,61)
LIG(17,68,17,62)
LIG(23,68,17,68)
LIG(23,62,23,68)
LIG(17,62,23,62)
FSYM
SYM  #button
BB(16,76,25,84)
TITLE 20 80  #button4
MODEL 59
PROP                                                                                                                                   
REC(17,77,6,6,r)
VIS 1
PIN(25,80,0.000,0.000)in4
LIG(24,80,25,80)
LIG(16,84,16,76)
LIG(24,84,16,84)
LIG(24,76,24,84)
LIG(16,76,24,76)
LIG(17,83,17,77)
LIG(23,83,17,83)
LIG(23,77,23,83)
LIG(17,77,23,77)
FSYM
SYM  #button
BB(96,61,105,69)
TITLE 100 65  #button5
MODEL 59
PROP                                                                                                                                   
REC(97,62,6,6,r)
VIS 1
PIN(105,65,0.000,0.000)in5
LIG(104,65,105,65)
LIG(96,69,96,61)
LIG(104,69,96,69)
LIG(104,61,104,69)
LIG(96,61,104,61)
LIG(97,68,97,62)
LIG(103,68,97,68)
LIG(103,62,103,68)
LIG(97,62,103,62)
FSYM
SYM  #button
BB(96,76,105,84)
TITLE 100 80  #button6
MODEL 59
PROP                                                                                                                                   
REC(97,77,6,6,r)
VIS 1
PIN(105,80,0.000,0.000)in6
LIG(104,80,105,80)
LIG(96,84,96,76)
LIG(104,84,96,84)
LIG(104,76,104,84)
LIG(96,76,104,76)
LIG(97,83,97,77)
LIG(103,83,97,83)
LIG(103,77,103,83)
LIG(97,77,103,77)
FSYM
SYM  #light
BB(38,-20,44,-6)
TITLE 40 -6  #light1
MODEL 49
PROP                                                                                                                                   
REC(39,-19,4,4,r)
VIS 1
PIN(40,-5,0.000,0.000)out1
LIG(43,-14,43,-19)
LIG(43,-19,42,-20)
LIG(39,-19,39,-14)
LIG(42,-9,42,-12)
LIG(41,-9,44,-9)
LIG(41,-7,43,-9)
LIG(42,-7,44,-9)
LIG(38,-12,44,-12)
LIG(40,-12,40,-5)
LIG(38,-14,38,-12)
LIG(44,-14,38,-14)
LIG(44,-12,44,-14)
LIG(40,-20,39,-19)
LIG(42,-20,40,-20)
FSYM
SYM  #light
BB(98,-20,104,-6)
TITLE 100 -6  #light2
MODEL 49
PROP                                                                                                                                   
REC(99,-19,4,4,r)
VIS 1
PIN(100,-5,0.000,0.000)out2
LIG(103,-14,103,-19)
LIG(103,-19,102,-20)
LIG(99,-19,99,-14)
LIG(102,-9,102,-12)
LIG(101,-9,104,-9)
LIG(101,-7,103,-9)
LIG(102,-7,104,-9)
LIG(98,-12,104,-12)
LIG(100,-12,100,-5)
LIG(98,-14,98,-12)
LIG(104,-14,98,-14)
LIG(104,-12,104,-14)
LIG(100,-20,99,-19)
LIG(102,-20,100,-20)
FSYM
SYM  #light
BB(158,-15,164,-1)
TITLE 160 -1  #light3
MODEL 49
PROP                                                                                                                                   
REC(159,-14,4,4,r)
VIS 1
PIN(160,0,0.000,0.000)out3
LIG(163,-9,163,-14)
LIG(163,-14,162,-15)
LIG(159,-14,159,-9)
LIG(162,-4,162,-7)
LIG(161,-4,164,-4)
LIG(161,-2,163,-4)
LIG(162,-2,164,-4)
LIG(158,-7,164,-7)
LIG(160,-7,160,0)
LIG(158,-9,158,-7)
LIG(164,-9,158,-9)
LIG(164,-7,164,-9)
LIG(160,-15,159,-14)
LIG(162,-15,160,-15)
FSYM
SYM  #light
BB(173,10,179,24)
TITLE 175 24  #light4
MODEL 49
PROP                                                                                                                                   
REC(174,11,4,4,r)
VIS 1
PIN(175,25,0.000,0.000)out4
LIG(178,16,178,11)
LIG(178,11,177,10)
LIG(174,11,174,16)
LIG(177,21,177,18)
LIG(176,21,179,21)
LIG(176,23,178,21)
LIG(177,23,179,21)
LIG(173,18,179,18)
LIG(175,18,175,25)
LIG(173,16,173,18)
LIG(179,16,173,16)
LIG(179,18,179,16)
LIG(175,10,174,11)
LIG(177,10,175,10)
FSYM
LIG(-30,10,-5,10)
LIG(-30,20,-5,20)
LIG(-25,35,-25,30)
LIG(-25,30,-5,30)
LIG(35,20,45,20)
LIG(45,20,45,10)
LIG(45,10,55,10)
LIG(160,25,175,25)
LIG(110,45,110,30)
LIG(95,20,105,20)
LIG(120,45,110,45)
LIG(105,20,105,10)
LIG(105,10,110,10)
LIG(105,65,110,65)
LIG(110,65,110,55)
LIG(110,55,100,55)
LIG(100,55,100,25)
LIG(100,25,110,25)
LIG(110,25,110,20)
LIG(105,80,120,80)
LIG(120,80,120,45)
LIG(25,65,35,65)
LIG(35,65,35,25)
LIG(35,25,50,25)
LIG(50,25,50,20)
LIG(50,20,55,20)
LIG(25,80,50,80)
LIG(50,80,50,30)
LIG(50,30,55,30)
LIG(35,10,40,10)
LIG(40,10,40,-5)
LIG(95,10,100,10)
LIG(100,10,100,-5)
LIG(150,10,160,10)
LIG(160,10,160,0)
LIG(150,20,160,20)
LIG(160,20,160,25)
FFIG G:\VLSI course\Sir Software\LAB\Multiple_bit_adder.sch
