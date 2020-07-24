DSCH 3.5
VERSION 7/24/2020 7:05:57 PM
BB(11,-20,104,55)
SYM  #nmos
BB(55,20,75,40)
TITLE 70 25  #nmos
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                              
REC(56,25,19,15,r)
VIS 0
PIN(75,40,0.000,0.000)s
PIN(55,30,0.000,0.000)g
PIN(75,20,0.005,0.004)d
LIG(65,30,55,30)
LIG(65,36,65,24)
LIG(67,36,67,24)
LIG(75,24,67,24)
LIG(75,20,75,24)
LIG(75,36,67,36)
LIG(75,40,75,36)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(55,-5,75,15)
TITLE 70 0  #pmos
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                              
REC(56,0,19,15,r)
VIS 0
PIN(75,-5,0.000,0.000)s
PIN(55,5,0.000,0.000)g
PIN(75,15,0.005,0.004)d
LIG(55,5,61,5)
LIG(63,5,63,5)
LIG(65,11,65,-1)
LIG(67,11,67,-1)
LIG(75,-1,67,-1)
LIG(75,-5,75,-1)
LIG(75,11,67,11)
LIG(75,15,75,11)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #button
BB(11,11,20,19)
TITLE 15 15  #button1
MODEL 59
PROP                                                                                                                                   
REC(12,12,6,6,r)
VIS 1
PIN(20,15,0.000,0.000)in1
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
SYM  #vdd
BB(70,-20,80,-10)
TITLE 73 -14  #vdd
MODEL 1
PROP                                                                                                                                   
REC(5,-5,0,0, )
VIS 0
PIN(75,-10,0.000,0.000)vdd
LIG(75,-10,75,-15)
LIG(75,-15,70,-15)
LIG(70,-15,75,-20)
LIG(75,-20,80,-15)
LIG(80,-15,75,-15)
FSYM
SYM  #light
BB(98,5,104,19)
TITLE 100 19  #light1
MODEL 49
PROP                                                                                                                                   
REC(99,6,4,4,r)
VIS 1
PIN(100,20,0.000,0.000)out1
LIG(103,11,103,6)
LIG(103,6,102,5)
LIG(99,6,99,11)
LIG(102,16,102,13)
LIG(101,16,104,16)
LIG(101,18,103,16)
LIG(102,18,104,16)
LIG(98,13,104,13)
LIG(100,13,100,20)
LIG(98,11,98,13)
LIG(104,11,98,11)
LIG(104,13,104,11)
LIG(100,5,99,6)
LIG(102,5,100,5)
FSYM
SYM  #vss
BB(70,47,80,55)
TITLE 74 52  #vss
MODEL 0
PROP                                                                                                                                    
REC(70,45,0,0,b)
VIS 0
PIN(75,45,0.000,0.000)vss
LIG(75,45,75,50)
LIG(70,50,80,50)
LIG(70,53,72,50)
LIG(72,53,74,50)
LIG(74,53,76,50)
LIG(76,53,78,50)
FSYM
CNC(55 15)
LIG(75,-5,75,-10)
LIG(75,20,75,15)
LIG(55,5,55,15)
LIG(75,40,75,45)
LIG(75,20,100,20)
LIG(20,15,55,15)
LIG(55,15,55,30)
FFIG G:\VLSI course\Sir Software\Simulation My\inverter.sch
