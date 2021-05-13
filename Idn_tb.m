clc
clear all

format short eng
betan = 450e-3;
vth = 0.19;
vgsn = 0.4;
Idn = Idn_sat(betan, vth, vgsn)


betap = 250e-3;
vtp = -0.25;
vdd = 1.5;
vout = 1;
vin = 0.4;
Idp = Idp_lin(betap, vtp, vdd, vout, vin)