DSCH 3.5
VERSION 7/24/2020 7:12:20 PM
BB(1,5,144,40)
SYM  #Nand
BB(25,10,65,40)
TITLE 35 3  #Nand
MODEL 6000
PROP                                                                                                                                   
REC(30,15,30,20,r)
VIS 5
PIN(25,20,0.000,0.000)A
PIN(25,30,0.000,0.000)B
PIN(65,20,0.010,0.010)Nand
LIG(25,20,30,20)
LIG(25,30,30,30)
LIG(60,20,65,20)
LIG(30,15,30,35)
LIG(30,15,60,15)
LIG(60,15,60,35)
LIG(60,35,30,35)
VLG module Nand( A,B,Nand);
VLG input A,B;
VLG output Nand;
VLG wire w2,;
VLG nmos #(2) nmos_1(Nand,w2,A); // 0.3u 0.07u
VLG nmos #(1) nmos_2(w2,vss,B); // 0.3u 0.07u
VLG pmos #(2) pmos_3(Nand,vdd,A); // 0.5u 0.07u
VLG pmos #(2) pmos_4(Nand,vdd,B); // 0.5u 0.07u
VLG endmodule
FSYM
SYM  #inverter
BB(80,10,120,30)
TITLE 90 3  #inverter
MODEL 6000
PROP                                                                                                                                   
REC(85,15,30,10,r)
VIS 5
PIN(80,20,0.000,0.000)input
PIN(120,20,0.010,0.006)output
LIG(80,20,85,20)
LIG(115,20,120,20)
LIG(85,15,85,25)
LIG(85,15,115,15)
LIG(115,15,115,25)
LIG(115,25,85,25)
VLG module inverter( input,output);
VLG input input;
VLG output output;
VLG wire ;
VLG nmos #(2) nmos_1(output,vss,input); // 0.3u 0.07u
VLG pmos #(2) pmos_2(output,vdd,input); // 0.5u 0.07u
VLG endmodule
FSYM
SYM  #button
BB(1,16,10,24)
TITLE 5 20  #A
MODEL 59
PROP                                                                                                                                   
REC(2,17,6,6,r)
VIS 1
PIN(10,20,0.000,0.000)A
LIG(9,20,10,20)
LIG(1,24,1,16)
LIG(9,24,1,24)
LIG(9,16,9,24)
LIG(1,16,9,16)
LIG(2,23,2,17)
LIG(8,23,2,23)
LIG(8,17,8,23)
LIG(2,17,8,17)
FSYM
SYM  #button
BB(1,26,10,34)
TITLE 5 30  #B
MODEL 59
PROP                                                                                                                                   
REC(2,27,6,6,r)
VIS 1
PIN(10,30,0.000,0.000)B
LIG(9,30,10,30)
LIG(1,34,1,26)
LIG(9,34,1,34)
LIG(9,26,9,34)
LIG(1,26,9,26)
LIG(2,33,2,27)
LIG(8,33,2,33)
LIG(8,27,8,33)
LIG(2,27,8,27)
FSYM
SYM  #light
BB(138,5,144,19)
TITLE 140 19  #AND
MODEL 49
PROP                                                                                                                                   
REC(139,6,4,4,r)
VIS 1
PIN(140,20,0.000,0.000)AND
LIG(143,11,143,6)
LIG(143,6,142,5)
LIG(139,6,139,11)
LIG(142,16,142,13)
LIG(141,16,144,16)
LIG(141,18,143,16)
LIG(142,18,144,16)
LIG(138,13,144,13)
LIG(140,13,140,20)
LIG(138,11,138,13)
LIG(144,11,138,11)
LIG(144,13,144,11)
LIG(140,5,139,6)
LIG(142,5,140,5)
FSYM
LIG(10,20,25,20)
LIG(10,30,25,30)
LIG(65,20,80,20)
LIG(120,20,140,20)
FFIG G:\VLSI course\Sir Software\Simulation My\And.sch
