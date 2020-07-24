DSCH 3.5
VERSION 7/24/2020 7:20:34 PM
BB(-34,-5,189,65)
SYM  #inverter
BB(5,-5,45,15)
TITLE 15 -12  #inverter
MODEL 6000
PROP                                                                                                                                   
REC(10,0,30,10,r)
VIS 5
PIN(5,5,0.000,0.000)input
PIN(45,5,0.010,0.010)output
LIG(5,5,10,5)
LIG(40,5,45,5)
LIG(10,0,10,10)
LIG(10,0,40,0)
LIG(40,0,40,10)
LIG(40,10,10,10)
VLG module inverter( input,output);
VLG input input;
VLG output output;
VLG wire ;
VLG nmos #(2) nmos_1(output,vss,input); // 0.3u 0.07u
VLG pmos #(2) pmos_2(output,vdd,input); // 0.5u 0.07u
VLG endmodule
FSYM
SYM  #inverter
BB(5,45,45,65)
TITLE 15 38  #inverter
MODEL 6000
PROP                                                                                                                                   
REC(10,50,30,10,r)
VIS 5
PIN(5,55,0.000,0.000)input
PIN(45,55,0.010,0.010)output
LIG(5,55,10,55)
LIG(40,55,45,55)
LIG(10,50,10,60)
LIG(10,50,40,50)
LIG(40,50,40,60)
LIG(40,60,10,60)
VLG module inverter( input,output);
VLG input input;
VLG output output;
VLG wire ;
VLG nmos #(2) nmos_1(output,vss,input); // 0.3u 0.07u
VLG pmos #(2) pmos_2(output,vdd,input); // 0.5u 0.07u
VLG endmodule
FSYM
SYM  #And
BB(80,-5,120,25)
TITLE 90 -12  #And
MODEL 6000
PROP                                                                                                                                   
REC(85,0,30,20,r)
VIS 5
PIN(80,5,0.000,0.000)A
PIN(80,15,0.000,0.000)B
PIN(120,5,0.010,0.012)AND
LIG(80,5,85,5)
LIG(80,15,85,15)
LIG(115,5,120,5)
LIG(85,0,85,20)
LIG(85,0,115,0)
LIG(115,0,115,20)
LIG(115,20,85,20)
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
SYM  #And
BB(80,35,120,65)
TITLE 90 28  #And
MODEL 6000
PROP                                                                                                                                   
REC(85,40,30,20,r)
VIS 5
PIN(80,45,0.000,0.000)A
PIN(80,55,0.000,0.000)B
PIN(120,45,0.010,0.012)AND
LIG(80,45,85,45)
LIG(80,55,85,55)
LIG(115,45,120,45)
LIG(85,40,85,60)
LIG(85,40,115,40)
LIG(115,40,115,60)
LIG(115,60,85,60)
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
SYM  #OR
BB(135,15,175,45)
TITLE 145 8  #OR
MODEL 6000
PROP                                                                                                                                   
REC(140,20,30,20,r)
VIS 5
PIN(135,25,0.000,0.000)A
PIN(135,35,0.000,0.000)B
PIN(175,25,0.010,0.008)OR
LIG(135,25,140,25)
LIG(135,35,140,35)
LIG(170,25,175,25)
LIG(140,20,140,40)
LIG(140,20,170,20)
LIG(170,20,170,40)
LIG(170,40,140,40)
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
BB(-34,1,-25,9)
TITLE -30 5  #A
MODEL 59
PROP                                                                                                                                   
REC(-33,2,6,6,r)
VIS 1
PIN(-25,5,0.000,0.000)A
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
TITLE -30 30  #B
MODEL 59
PROP                                                                                                                                   
REC(-33,27,6,6,r)
VIS 1
PIN(-25,30,0.000,0.000)B
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
BB(183,10,189,24)
TITLE 185 24  #XOR
MODEL 49
PROP                                                                                                                                   
REC(184,11,4,4,r)
VIS 1
PIN(185,25,0.000,0.000)XOR
LIG(188,16,188,11)
LIG(188,11,187,10)
LIG(184,11,184,16)
LIG(187,21,187,18)
LIG(186,21,189,21)
LIG(186,23,188,21)
LIG(187,23,189,21)
LIG(183,18,189,18)
LIG(185,18,185,25)
LIG(183,16,183,18)
LIG(189,16,183,16)
LIG(189,18,189,16)
LIG(185,10,184,11)
LIG(187,10,185,10)
FSYM
CNC(-20 30)
CNC(-5 5)
LIG(-25,5,-5,5)
LIG(45,5,80,5)
LIG(-25,30,-20,30)
LIG(-20,30,-20,55)
LIG(-20,55,5,55)
LIG(45,55,80,55)
LIG(-20,30,-20,15)
LIG(-20,15,80,15)
LIG(-5,5,-5,45)
LIG(-5,5,5,5)
LIG(-5,45,80,45)
LIG(120,5,120,25)
LIG(120,25,135,25)
LIG(120,45,120,35)
LIG(120,35,135,35)
LIG(175,25,185,25)
FFIG G:\VLSI course\Sir Software\Simulation My\XOR.sch
