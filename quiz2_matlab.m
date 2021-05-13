clc
clear all


zo = 50;
% % problem 1
smag = [0.674, 0.075; 1.74, 0.6];
sang = [-152, 6; 36, -93];
% 
GammaS = 0.575;
GammaS_ang = 138;
GammaS = pol2cart(deg2rad(GammaS_ang),GammaS);
% 
% 
s = my_pol2cart(smag,sang)

 
GammaOut = GammaOut(s,GammaS)
 
gammaout = gammaout(s,zo,

GammaOutMag = abs(GammaOut)
GammaOutAng = rad2deg(angle(GammaOut))


% % problem 7
% smag = [0.935, 0.045; 2.166, 0.733];
% sang = [-51.9,-54.6;128.3,-30.5];
% 
% s = my_pol2cart(smag,sang)
% 
% [k,b1,b2,delta] = stabilityk(s);
% stability_index = (k>1)&(abs(delta)<1);
% is_stable = all(stability_index)
% 
% Gmsg_cond_stable = powergain(s,'Gmsg')
% 
% smag = [0.6,0.085;1.97,0.52];
% sang = [146,62;32,-63];
% 
% snew = my_pol2cart(smag,sang)
% Gmag_cond_stable = powergain(snew,'Gmag')
% 
% nf = noisefigure(
