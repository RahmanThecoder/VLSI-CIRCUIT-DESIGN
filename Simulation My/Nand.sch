DSCH 3.5
VERSION 7/24/2020 7:10:20 PM
BB(1,-20,139,85)
SYM  #nmos
BB(65,30,85,50)
TITLE 80 35  #nmos
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                              
REC(66,35,19,15,r)
VIS 0
PIN(85,50,0.000,0.000)s
PIN(65,40,0.000,0.000)g
PIN(85,30,0.005,0.006)d
LIG(75,40,65,40)
LIG(75,46,75,34)
LIG(77,46,77,34)
LIG(85,34,77,34)
LIG(85,30,85,34)
LIG(85,46,77,46)
LIG(85,50,85,46)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(65,55,85,75)
TITLE 80 60  #nmos
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                              
REC(66,60,19,15,r)
VIS 0
PIN(85,75,0.000,0.000)s
PIN(65,65,0.000,0.000)g
PIN(85,55,0.005,0.002)d
LIG(75,65,65,65)
LIG(75,71,75,59)
LIG(77,71,77,59)
LIG(85,59,77,59)
LIG(85,55,85,59)
LIG(85,71,77,71)
LIG(85,75,85,71)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(45,-5,65,15)
TITLE 60 0  #pmos
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                              
REC(46,0,19,15,r)
VIS 0
PIN(65,-5,0.000,0.000)s
PIN(45,5,0.000,0.000)g
PIN(65,15,0.005,0.006)d
LIG(45,5,51,5)
LIG(53,5,53,5)
LIG(55,11,55,-1)
LIG(57,11,57,-1)
LIG(65,-1,57,-1)
LIG(65,-5,65,-1)
LIG(65,11,57,11)
LIG(65,15,65,11)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(85,-5,105,15)
TITLE 100 0  #pmos
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                              
REC(86,0,19,15,r)
VIS 0
PIN(105,-5,0.000,0.000)s
PIN(85,5,0.000,0.000)g
PIN(105,15,0.005,0.006)d
LIG(85,5,91,5)
LIG(93,5,93,5)
LIG(95,11,95,-1)
LIG(97,11,97,-1)
LIG(105,-1,97,-1)
LIG(105,-5,105,-1)
LIG(105,11,97,11)
LIG(105,15,105,11)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #vdd
BB(75,-20,85,-10)
TITLE 78 -14  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(80,-10,0.000,0.000)vdd
LIG(80,-10,80,-15)
LIG(80,-15,75,-15)
LIG(75,-15,80,-20)
LIG(80,-20,85,-15)
LIG(85,-15,80,-15)
FSYM
SYM  #light
BB(133,10,139,24)
TITLE 135 24  #Nand
MODEL 49
PROP                                                                                                                                   
REC(134,11,4,4,r)
VIS 1
PIN(135,25,0.000,0.000)Nand
LIG(138,16,138,11)
LIG(138,11,137,10)
LIG(134,11,134,16)
LIG(137,21,137,18)
LIG(136,21,139,21)
LIG(136,23,138,21)
LIG(137,23,139,21)
LIG(133,18,139,18)
LIG(135,18,135,25)
LIG(133,16,133,18)
LIG(139,16,133,16)
LIG(139,18,139,16)
LIG(135,10,134,11)
LIG(137,10,135,10)
FSYM
SYM  #button
BB(1,11,10,19)
TITLE 5 15  #A
MODEL 59
PROP                                                                                                                                   
REC(2,12,6,6,r)
VIS 1
PIN(10,15,0.000,0.000)A
LIG(9,15,10,15)
LIG(1,19,1,11)
LIG(9,19,1,19)
LIG(9,11,9,19)
LIG(1,11,9,11)
LIG(2,18,2,12)
LIG(8,18,2,18)
LIG(8,12,8,18)
LIG(2,12,8,12)
FSYM
SYM  #button
BB(1,36,10,44)
TITLE 5 40  #B
MODEL 59
PROP                                                                                                                                   
REC(2,37,6,6,r)
VIS 1
PIN(10,40,0.000,0.000)B
LIG(9,40,10,40)
LIG(1,44,1,36)
LIG(9,44,1,44)
LIG(9,36,9,44)
LIG(1,36,9,36)
LIG(2,43,2,37)
LIG(8,43,2,43)
LIG(8,37,8,43)
LIG(2,37,8,37)
FSYM
SYM  #vss
BB(80,77,90,85)
TITLE 84 82  #vss
MODEL 0
PROP                                                                                                                                    
REC(80,75,0,0,b)
VIS 0
PIN(85,75,0.000,0.000)vss
LIG(85,75,85,80)
LIG(80,80,90,80)
LIG(80,83,82,80)
LIG(82,83,84,80)
LIG(84,83,86,80)
LIG(86,83,88,80)
FSYM
CNC(85 15)
CNC(85 25)
CNC(40 15)
CNC(60 65)
CNC(80 -5)
LIG(65,-5,80,-5)
LIG(65,15,85,15)
LIG(85,30,85,25)
LIG(85,15,105,15)
LIG(85,50,85,55)
LIG(80,-5,105,-5)
LIG(85,25,135,25)
LIG(85,25,85,15)
LIG(10,15,40,15)
LIG(40,15,40,5)
LIG(40,5,45,5)
LIG(40,15,40,40)
LIG(40,40,65,40)
LIG(10,40,20,40)
LIG(80,-10,80,-5)
LIG(20,40,20,65)
LIG(80,5,85,5)
LIG(20,65,60,65)
LIG(60,65,60,25)
LIG(60,65,65,65)
LIG(60,25,80,25)
LIG(80,25,80,5)
FFIG G:\VLSI course\Sir Software\Simulation My\Nand.sch
