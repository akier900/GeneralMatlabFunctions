clc
clear all
format short eng

S11 = [0.54, 165];
S12 = [0.09, 20];
S21 = [2, 30];
S22 = [0.5, -80];


S = [S11, S12; S21, S22];

[mu1, mu2] = Mu_stab(S)
