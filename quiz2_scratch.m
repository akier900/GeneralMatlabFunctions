clc
clear


% problem 1
smag = [0.674, 0.075; 1.74, 0.6];
sang = [-152, 6; 36, -93];

GammaS = 0.575;
GammaS_ang = 138;

GammaS = pol2cart(deg2rad(GammaS_ang),GammaS;


S = my_pol2cart(smag,sang)