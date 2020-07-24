// DSCH 3.5
// 7/24/2020 7:07:00 PM
// G:\VLSI course\Sir Software\Simulation My\inverter.sch

module inverter( input,output);
 input input;
 output output;
 wire ;
 nmos #(2) nmos_1(output,vss,input); // 0.3u 0.07u
 pmos #(2) pmos_2(output,vdd,input); // 0.5u 0.07u
endmodule

// Simulation parameters in Verilog Format
always
#200 input=~input;

// Simulation parameters
// input CLK 1 1
