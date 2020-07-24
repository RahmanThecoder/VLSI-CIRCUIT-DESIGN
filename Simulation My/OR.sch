DSCH 3.5
VERSION 7/24/2020 7:17:09 PM
BB(11,0,159,35)
SYM  #Nor
BB(35,5,75,35)
TITLE 45 -2  #Nor
MODEL 6000
PROP                                                                                                                                   
REC(40,10,30,20,r)
VIS 5
PIN(35,15,0.000,0.000)A
PIN(35,25,0.000,0.000)B
PIN(75,15,0.010,0.010)NOR
LIG(35,15,40,15)
LIG(35,25,40,25)
LIG(70,15,75,15)
LIG(40,10,40,30)
LIG(40,10,70,10)
LIG(70,10,70,30)
LIG(70,30,40,30)
VLG module Nor( A,B,NOR);
VLG input A,B;
VLG output NOR;
VLG wire w5;
VLG nmos #(2) nmos_1(NOR,vss,A); // 0.3u 0.07u
VLG nmos #(2) nmos_2(NOR,vss,B); // 0.3u 0.07u
VLG pmos #(1) pmos_3(w5,vdd,A); // 0.5u 0.07u
VLG pmos #(2) pmos_4(NOR,w5,B); // 0.5u 0.07u
VLG endmodule
FSYM
SYM  #inverter
BB(90,5,130,25)
TITLE 100 -2  #inverter
MODEL 6000
PROP                                                                                                                                   
REC(95,10,30,10,r)
VIS 5
PIN(90,15,0.000,0.000)input
PIN(130,15,0.010,0.006)output
LIG(90,15,95,15)
LIG(125,15,130,15)
LIG(95,10,95,20)
LIG(95,10,125,10)
LIG(125,10,125,20)
LIG(125,20,95,20)
VLG module inverter( input,output);
VLG input input;
VLG output output;
VLG wire ;
VLG nmos #(2) nmos_1(output,vss,input); // 0.3u 0.07u
VLG pmos #(2) pmos_2(output,vdd,input); // 0.5u 0.07u
VLG endmodule
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
SYM  #light
BB(153,0,159,14)
TITLE 155 14  #OR
MODEL 49
PROP                                                                                                                                   
REC(154,1,4,4,r)
VIS 1
PIN(155,15,0.000,0.000)OR
LIG(158,6,158,1)
LIG(158,1,157,0)
LIG(154,1,154,6)
LIG(157,11,157,8)
LIG(156,11,159,11)
LIG(156,13,158,11)
LIG(157,13,159,11)
LIG(153,8,159,8)
LIG(155,8,155,15)
LIG(153,6,153,8)
LIG(159,6,153,6)
LIG(159,8,159,6)
LIG(155,0,154,1)
LIG(157,0,155,0)
FSYM
LIG(20,15,35,15)
LIG(20,25,35,25)
LIG(75,15,90,15)
LIG(130,15,155,15)
FFIG G:\VLSI course\Sir Software\Simulation My\OR.sch
