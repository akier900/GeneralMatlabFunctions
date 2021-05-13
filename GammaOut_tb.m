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

S = [S11, S12;
     S21, S22];

    
Gamma = GammaOut(S, GammaS);


GammaMag = abs(Gamma)
GammaAng = rad2deg(angle(Gamma))
