clc
clear

zo = 50;
smag = [0.61, 3.72; 0.05, 0.45];
sang = [165, 59; 42, -48];

S = my_pol2cart(smag, sang)
Z = s2z(S,zo)


S = z2s(Z,zo)

Y = z2y(Z,zo)

Y = inv(Z)

Z = y2z(Y,zo)

Z = inv(Y)
