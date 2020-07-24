DSCH 3.5
VERSION 7/24/2020 7:25:22 PM
BB(6,-10,144,55)
SYM  #XOR
BB(40,-5,80,25)
TITLE 50 -12  #XOR
MODEL 6000
PROP                                                                                                                                   
REC(45,0,30,20,r)
VIS 5
PIN(40,5,0.000,0.000)A
PIN(40,15,0.000,0.000)B
PIN(80,5,0.010,0.010)XOR
LIG(40,5,45,5)
LIG(40,15,45,15)
LIG(75,5,80,5)
LIG(45,0,45,20)
LIG(45,0,75,0)
LIG(75,0,75,20)
LIG(75,20,45,20)
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
SYM  #And
BB(75,25,115,55)
TITLE 85 18  #And
MODEL 6000
PROP                                                                                                                                   
REC(80,30,30,20,r)
VIS 5
PIN(75,35,0.000,0.000)A
PIN(75,45,0.000,0.000)B
PIN(115,35,0.010,0.008)AND
LIG(75,35,80,35)
LIG(75,45,80,45)
LIG(110,35,115,35)
LIG(80,30,80,50)
LIG(80,30,110,30)
LIG(110,30,110,50)
LIG(110,50,80,50)
VLG module And( A,B,AND);
VLG input A,B;
VLG output AND;
VLG wire w4,w6;
VLG nand #(4) Nand_1(w4,A,B);
VLG not #(3) inverter_2(AND,w4);
VLG nmos #(3) nmos_1_3(w4,w6,A); //  
VLG nmos #(1) nmos_2_4(w6,vss,B); //  
VLG pmos #(3) pmos_3_5(w4,vdd,A); //  
VLG pmos #(3) pmos_4_6(w4,vdd,B); //  
VLG nmos #(2) nmos_1_7(AND,vss,w4); //  
VLG pmos #(2) pmos_2_8(AND,vdd,w4); //  
VLG endmodule
FSYM
SYM  #button
BB(6,1,15,9)
TITLE 10 5  #A
MODEL 59
PROP                                                                                                                                   
REC(7,2,6,6,r)
VIS 1
PIN(15,5,0.000,0.000)A
LIG(14,5,15,5)
LIG(6,9,6,1)
LIG(14,9,6,9)
LIG(14,1,14,9)
LIG(6,1,14,1)
LIG(7,8,7,2)
LIG(13,8,7,8)
LIG(13,2,13,8)
LIG(7,2,13,2)
FSYM
SYM  #button
BB(6,11,15,19)
TITLE 10 15  #B
MODEL 59
PROP                                                                                                                                   
REC(7,12,6,6,r)
VIS 1
PIN(15,15,0.000,0.000)B
LIG(14,15,15,15)
LIG(6,19,6,11)
LIG(14,19,6,19)
LIG(14,11,14,19)
LIG(6,11,14,11)
LIG(7,18,7,12)
LIG(13,18,7,18)
LIG(13,12,13,18)
LIG(7,12,13,12)
FSYM
SYM  #light
BB(103,-10,109,4)
TITLE 105 4  #sum
MODEL 49
PROP                                                                                                                                   
REC(104,-9,4,4,r)
VIS 1
PIN(105,5,0.000,0.000)sum
LIG(108,-4,108,-9)
LIG(108,-9,107,-10)
LIG(104,-9,104,-4)
LIG(107,1,107,-2)
LIG(106,1,109,1)
LIG(106,3,108,1)
LIG(107,3,109,1)
LIG(103,-2,109,-2)
LIG(105,-2,105,5)
LIG(103,-4,103,-2)
LIG(109,-4,103,-4)
LIG(109,-2,109,-4)
LIG(105,-10,104,-9)
LIG(107,-10,105,-10)
FSYM
SYM  #light
BB(138,20,144,34)
TITLE 140 34  #carry
MODEL 49
PROP                                                                                                                                   
REC(139,21,4,4,b)
VIS 1
PIN(140,35,0.000,0.000)carry
LIG(143,26,143,21)
LIG(143,21,142,20)
LIG(139,21,139,26)
LIG(142,31,142,28)
LIG(141,31,144,31)
LIG(141,33,143,31)
LIG(142,33,144,31)
LIG(138,28,144,28)
LIG(140,28,140,35)
LIG(138,26,138,28)
LIG(144,26,138,26)
LIG(144,28,144,26)
LIG(140,20,139,21)
LIG(142,20,140,20)
FSYM
CNC(25 5)
CNC(30 15)
LIG(15,5,25,5)
LIG(15,15,30,15)
LIG(25,5,25,35)
LIG(25,5,40,5)
LIG(25,35,75,35)
LIG(30,15,30,45)
LIG(30,15,40,15)
LIG(30,45,75,45)
LIG(80,5,105,5)
LIG(115,35,140,35)
FFIG G:\VLSI course\Sir Software\Simulation My\Half_adder.sch
