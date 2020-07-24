DSCH 3.5
VERSION 7/24/2020 7:22:15 PM
BB(11,0,164,35)
SYM  #XOR
BB(45,5,85,35)
TITLE 55 -2  #XOR
MODEL 6000
PROP                                                                                                                                   
REC(50,10,30,20,r)
VIS 5
PIN(45,15,0.000,0.000)A
PIN(45,25,0.000,0.000)B
PIN(85,15,0.010,0.012)XOR
LIG(45,15,50,15)
LIG(45,25,50,25)
LIG(80,15,85,15)
LIG(50,10,50,30)
LIG(50,10,80,10)
LIG(80,10,80,30)
LIG(80,30,50,30)
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
SYM  #inverter
BB(95,5,135,25)
TITLE 105 -2  #inverter
MODEL 6000
PROP                                                                                                                                   
REC(100,10,30,10,r)
VIS 5
PIN(95,15,0.000,0.000)input
PIN(135,15,0.010,0.006)output
LIG(95,15,100,15)
LIG(130,15,135,15)
LIG(100,10,100,20)
LIG(100,10,130,10)
LIG(130,10,130,20)
LIG(130,20,100,20)
VLG module inverter( input,output);
VLG input input;
VLG output output;
VLG wire ;
VLG nmos #(2) nmos_1(output,vss,input); // 0.3u 0.07u
VLG pmos #(2) pmos_2(output,vdd,input); // 0.5u 0.07u
VLG endmodule
FSYM
SYM  #light
BB(158,0,164,14)
TITLE 160 14  #XNOR
MODEL 49
PROP                                                                                                                                   
REC(159,1,4,4,r)
VIS 1
PIN(160,15,0.000,0.000)XNOR
LIG(163,6,163,1)
LIG(163,1,162,0)
LIG(159,1,159,6)
LIG(162,11,162,8)
LIG(161,11,164,11)
LIG(161,13,163,11)
LIG(162,13,164,11)
LIG(158,8,164,8)
LIG(160,8,160,15)
LIG(158,6,158,8)
LIG(164,6,158,6)
LIG(164,8,164,6)
LIG(160,0,159,1)
LIG(162,0,160,0)
FSYM
SYM  #button
BB(11,11,20,19)
TITLE 15 15  #A
MODEL 59
PROP                                                                                                                                   
REC(12,12,6,6,r)
VIS 1
PIN(20,15,0.000,0.000)A
LIG(19,15,20,15)
LIG(11,19,11,11)
LIG(19,19,11,19)
LIG(19,11,19,19)
LIG(11,11,19,11)
LIG(12,18,12,12)
LIG(18,18,12,18)
LIG(18,12,18,18)
LIG(12,12,18,12)
FSYM
SYM  #button
BB(11,21,20,29)
TITLE 15 25  #B
MODEL 59
PROP                                                                                                                                   
REC(12,22,6,6,r)
VIS 1
PIN(20,25,0.000,0.000)B
LIG(19,25,20,25)
LIG(11,29,11,21)
LIG(19,29,11,29)
LIG(19,21,19,29)
LIG(11,21,19,21)
LIG(12,28,12,22)
LIG(18,28,12,28)
LIG(18,22,18,28)
LIG(12,22,18,22)
FSYM
LIG(20,15,45,15)
LIG(20,25,45,25)
LIG(85,15,95,15)
LIG(135,15,160,15)
FFIG G:\VLSI course\Sir Software\Simulation My\XNOR.sch
