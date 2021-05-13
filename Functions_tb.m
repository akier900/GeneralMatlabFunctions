clc
clear all

% testbench for GammaOut function
format short eng


% s param matrix from microwaves2 quiz1 (problem 7)
S11 = [0.54, 165];
S12 = [0.09, 20];
S21 = [2, 30];
S22 = [0.5, -80];

% GammaS and GammaL values also from quiz1
GammaS = [0.49, -150];
GammaL = [0.56, 90];

S = [S11, S12; S21, S22];


%% Testing GammaOut 
GammaOut = GammaOut(S, GammaS);

GammaOutMag = abs(GammaOut)
GammaOutAng = rad2deg(angle(GammaOut))

%% Testing Ga



%% Testing GammaIn
GammaIn = GammaIn(S, GammaL);

GammaInMag = abs(GammaIn)
GammaInAng = rad2deg(angle(GammaIn))




%% Testing Gp
Gp = Gp(S, GammaL)

%% Testing Ga
Ga = Ga(S, GammaS)


GammaS = [0.49, -150];
GammaL = [0.56, 90];

%% Testing Gt
Gt = Gt(S, GammaS, GammaL)
