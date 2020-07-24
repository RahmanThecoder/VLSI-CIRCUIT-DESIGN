DSCH 3.5
VERSION 7/24/2020 7:29:53 PM
BB(-34,-15,179,65)
SYM  #Half_adder
BB(0,-15,40,15)
TITLE 10 -22  #Half_adder
MODEL 6000
PROP                                                                                                                                   
REC(5,-10,30,20,r)
VIS 5
PIN(0,-5,0.000,0.000)A
PIN(0,5,0.000,0.000)B
PIN(40,-5,0.010,0.034)sum
PIN(40,5,0.010,0.014)carry
LIG(0,-5,5,-5)
LIG(0,5,5,5)
LIG(35,-5,40,-5)
LIG(35,5,40,5)
LIG(5,-10,5,10)
LIG(5,-10,35,-10)
LIG(35,-10,35,10)
LIG(35,10,5,10)
VLG module Half_adder( A,B,sum,carry);
VLG input A,B;
VLG output sum,carry;
VLG wire w6,w7,w8,w9,w10,w11,w12,w13;
VLG wire w14,w15,w16,w17;
VLG xor #(4) XOR_1(sum,A,B);
VLG and #(4) And_2(carry,A,B);
VLG not #(4) inverter_1_3(w6,A);
VLG not #(4) inverter_2_4(w7,B);
VLG and #(5) And_3_5(w8,w6,B);
VLG and #(5) And_4_6(w9,A,w7);
VLG or #(4) OR_5_7(sum,w8,w9);
VLG nmos #(4) nmos_1_6_8(w6,vss,A); //  
VLG pmos #(4) pmos_2_7_9(w6,vdd,A); //  
VLG nmos #(4) nmos_1_8_10(w7,vss,B); //  
VLG pmos #(4) pmos_2_9_11(w7,vdd,B); //  
VLG nand #(4) Nand_1_10_12(w10,w6,B);
VLG not #(4) inverter_2_11_13(w8,w10);
VLG nmos #(4) nmos_1_3_12_14(w10,w11,w6); //  
VLG nmos #(1) nmos_2_4_13_15(w11,vss,B); //  
VLG pmos #(4) pmos_3_5_14_16(w10,vdd,w6); //  
VLG pmos #(4) pmos_4_6_15_17(w10,vdd,B); //  
VLG nmos #(4) nmos_1_7_16_18(w8,vss,w10); //  
VLG pmos #(4) pmos_2_8_17_19(w8,vdd,w10); //  
VLG nand #(4) Nand_1_18_20(w12,A,w7);
VLG not #(4) inverter_2_19_21(w9,w12);
VLG nmos #(4) nmos_1_3_20_22(w12,w13,A); //  
VLG nmos #(1) nmos_2_4_21_23(w13,vss,w7); //  
VLG pmos #(4) pmos_3_5_22_24(w12,vdd,A); //  
VLG pmos #(4) pmos_4_6_23_25(w12,vdd,w7); //  
VLG nmos #(4) nmos_1_7_24_26(w9,vss,w12); //  
VLG pmos #(4) pmos_2_8_25_27(w9,vdd,w12); //  
VLG nor #(4) Nor_1_26_28(w14,w8,w9);
VLG not #(3) inverter_2_27_29(sum,w14);
VLG nmos #(4) nmos_1_3_28_30(w14,vss,w8); //  
VLG nmos #(4) nmos_2_4_29_31(w14,vss,w9); //  
VLG pmos #(1) pmos_3_5_30_32(w15,vdd,w8); //  
VLG pmos #(4) pmos_4_6_31_33(w14,w15,w9); //  
VLG nmos #(3) nmos_1_7_32_34(sum,vss,w14); //  
VLG pmos #(3) pmos_2_8_33_35(sum,vdd,w14); //  
VLG nand #(4) Nand_1_36(w16,A,B);
VLG not #(3) inverter_2_37(carry,w16);
VLG nmos #(4) nmos_1_3_38(w16,w17,A); //  
VLG nmos #(1) nmos_2_4_39(w17,vss,B); //  
VLG pmos #(4) pmos_3_5_40(w16,vdd,A); //  
VLG pmos #(4) pmos_4_6_41(w16,vdd,B); //  
VLG nmos #(2) nmos_1_7_42(carry,vss,w16); //  
VLG pmos #(2) pmos_2_8_43(carry,vdd,w16); //  
VLG endmodule
FSYM
SYM  #Half_adder
BB(60,10,100,40)
TITLE 70 3  #Half_adder
MODEL 6000
PROP                                                                                                                                   
REC(65,15,30,20,r)
VIS 5
PIN(60,20,0.000,0.000)A
PIN(60,30,0.000,0.000)B
PIN(100,20,0.010,0.012)sum
PIN(100,30,0.010,0.014)carry
LIG(60,20,65,20)
LIG(60,30,65,30)
LIG(95,20,100,20)
LIG(95,30,100,30)
LIG(65,15,65,35)
LIG(65,15,95,15)
LIG(95,15,95,35)
LIG(95,35,65,35)
VLG module Half_adder( A,B,sum,carry);
VLG input A,B;
VLG output sum,carry;
VLG wire w6,w7,w8,w9,w10,w11,w12,w13;
VLG wire w14,w15,w16,w17;
VLG xor #(4) XOR_1(sum,A,B);
VLG and #(4) And_2(carry,A,B);
VLG not #(4) inverter_1_3(w6,A);
VLG not #(4) inverter_2_4(w7,B);
VLG and #(5) And_3_5(w8,w6,B);
VLG and #(5) And_4_6(w9,A,w7);
VLG or #(4) OR_5_7(sum,w8,w9);
VLG nmos #(4) nmos_1_6_8(w6,vss,A); //  
VLG pmos #(4) pmos_2_7_9(w6,vdd,A); //  
VLG nmos #(4) nmos_1_8_10(w7,vss,B); //  
VLG pmos #(4) pmos_2_9_11(w7,vdd,B); //  
VLG nand #(4) Nand_1_10_12(w10,w6,B);
VLG not #(4) inverter_2_11_13(w8,w10);
VLG nmos #(4) nmos_1_3_12_14(w10,w11,w6); //  
VLG nmos #(1) nmos_2_4_13_15(w11,vss,B); //  
VLG pmos #(4) pmos_3_5_14_16(w10,vdd,w6); //  
VLG pmos #(4) pmos_4_6_15_17(w10,vdd,B); //  
VLG nmos #(4) nmos_1_7_16_18(w8,vss,w10); //  
VLG pmos #(4) pmos_2_8_17_19(w8,vdd,w10); //  
VLG nand #(4) Nand_1_18_20(w12,A,w7);
VLG not #(4) inverter_2_19_21(w9,w12);
VLG nmos #(4) nmos_1_3_20_22(w12,w13,A); //  
VLG nmos #(1) nmos_2_4_21_23(w13,vss,w7); //  
VLG pmos #(4) pmos_3_5_22_24(w12,vdd,A); //  
VLG pmos #(4) pmos_4_6_23_25(w12,vdd,w7); //  
VLG nmos #(4) nmos_1_7_24_26(w9,vss,w12); //  
VLG pmos #(4) pmos_2_8_25_27(w9,vdd,w12); //  
VLG nor #(4) Nor_1_26_28(w14,w8,w9);
VLG not #(3) inverter_2_27_29(sum,w14);
VLG nmos #(4) nmos_1_3_28_30(w14,vss,w8); //  
VLG nmos #(4) nmos_2_4_29_31(w14,vss,w9); //  
VLG pmos #(1) pmos_3_5_30_32(w15,vdd,w8); //  
VLG pmos #(4) pmos_4_6_31_33(w14,w15,w9); //  
VLG nmos #(3) nmos_1_7_32_34(sum,vss,w14); //  
VLG pmos #(3) pmos_2_8_33_35(sum,vdd,w14); //  
VLG nand #(4) Nand_1_36(w16,A,B);
VLG not #(3) inverter_2_37(carry,w16);
VLG nmos #(4) nmos_1_3_38(w16,w17,A); //  
VLG nmos #(1) nmos_2_4_39(w17,vss,B); //  
VLG pmos #(4) pmos_3_5_40(w16,vdd,A); //  
VLG pmos #(4) pmos_4_6_41(w16,vdd,B); //  
VLG nmos #(2) nmos_1_7_42(carry,vss,w16); //  
VLG pmos #(2) pmos_2_8_43(carry,vdd,w16); //  
VLG endmodule
FSYM
SYM  #OR
BB(120,35,160,65)
TITLE 130 28  #OR_1
MODEL 6000
PROP                                                                                                                                   
REC(125,40,30,20,r)
VIS 5
PIN(120,45,0.000,0.000)A
PIN(120,55,0.000,0.000)B
PIN(160,45,0.010,0.008)OR
LIG(120,45,125,45)
LIG(120,55,125,55)
LIG(155,45,160,45)
LIG(125,40,125,60)
LIG(125,40,155,40)
LIG(155,40,155,60)
LIG(155,60,125,60)
VLG module OR( A,B,OR);
VLG input A,B;
VLG output OR;
VLG wire w4,w6;
VLG nor #(4) Nor_1(w4,A,B);
VLG not #(3) inverter_2(OR,w4);
VLG nmos #(3) nmos_1_3(w4,vss,A); //  
VLG nmos #(3) nmos_2_4(w4,vss,B); //  
VLG pmos #(1) pmos_3_5(w6,vdd,A); //  
VLG pmos #(3) pmos_4_6(w4,w6,B); //  
VLG nmos #(2) nmos_1_7(OR,vss,w4); //  
VLG pmos #(2) pmos_2_8(OR,vdd,w4); //  
VLG endmodule
FSYM
SYM  #button
BB(-34,-9,-25,-1)
TITLE -30 -5  #A
MODEL 59
PROP                                                                                                                                   
REC(-33,-8,6,6,r)
VIS 1
PIN(-25,-5,0.000,0.000)A
LIG(-26,-5,-25,-5)
LIG(-34,-1,-34,-9)
LIG(-26,-1,-34,-1)
LIG(-26,-9,-26,-1)
LIG(-34,-9,-26,-9)
LIG(-33,-2,-33,-8)
LIG(-27,-2,-33,-2)
LIG(-27,-8,-27,-2)
LIG(-33,-8,-27,-8)
FSYM
SYM  #button
BB(-34,1,-25,9)
TITLE -30 5  #B
MODEL 59
PROP                                                                                                                                   
REC(-33,2,6,6,r)
VIS 1
PIN(-25,5,0.000,0.000)B
LIG(-26,5,-25,5)
LIG(-34,9,-34,1)
LIG(-26,9,-34,9)
LIG(-26,1,-26,9)
LIG(-34,1,-26,1)
LIG(-33,8,-33,2)
LIG(-27,8,-33,8)
LIG(-27,2,-27,8)
LIG(-33,2,-27,2)
FSYM
SYM  #button
BB(-34,26,-25,34)
TITLE -30 30  #C
MODEL 59
PROP                                                                                                                                   
REC(-33,27,6,6,r)
VIS 1
PIN(-25,30,0.000,0.000)C
LIG(-26,30,-25,30)
LIG(-34,34,-34,26)
LIG(-26,34,-34,34)
LIG(-26,26,-26,34)
LIG(-34,26,-26,26)
LIG(-33,33,-33,27)
LIG(-27,33,-33,33)
LIG(-27,27,-27,33)
LIG(-33,27,-27,27)
FSYM
SYM  #light
BB(143,5,149,19)
TITLE 145 19  #sum
MODEL 49
PROP                                                                                                                                   
REC(144,6,4,4,r)
VIS 1
PIN(145,20,0.000,0.000)sum
LIG(148,11,148,6)
LIG(148,6,147,5)
LIG(144,6,144,11)
LIG(147,16,147,13)
LIG(146,16,149,16)
LIG(146,18,148,16)
LIG(147,18,149,16)
LIG(143,13,149,13)
LIG(145,13,145,20)
LIG(143,11,143,13)
LIG(149,11,143,11)
LIG(149,13,149,11)
LIG(145,5,144,6)
LIG(147,5,145,5)
FSYM
SYM  #light
BB(173,30,179,44)
TITLE 175 44  #carry
MODEL 49
PROP                                                                                                                                   
REC(174,31,4,4,y)
VIS 1
PIN(175,45,0.000,0.000)carry
LIG(178,36,178,31)
LIG(178,31,177,30)
LIG(174,31,174,36)
LIG(177,41,177,38)
LIG(176,41,179,41)
LIG(176,43,178,41)
LIG(177,43,179,41)
LIG(173,38,179,38)
LIG(175,38,175,45)
LIG(173,36,173,38)
LIG(179,36,173,36)
LIG(179,38,179,36)
LIG(175,30,174,31)
LIG(177,30,175,30)
FSYM
LIG(-25,-5,0,-5)
LIG(-25,5,0,5)
LIG(40,-5,60,-5)
LIG(160,45,175,45)
LIG(60,-5,60,20)
LIG(-25,30,60,30)
LIG(100,20,145,20)
LIG(40,5,40,55)
LIG(100,45,120,45)
LIG(40,55,120,55)
LIG(100,30,100,45)
FFIG G:\VLSI course\Sir Software\Simulation My\full_adder.sch
