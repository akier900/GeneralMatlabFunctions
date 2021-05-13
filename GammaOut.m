function GammaOut = GammaOut(S, GammaS)
% requires S in 2 by 2 matrix [S11, S12; S21, S22]. We can convert from
% polar form using my_pol2cart() in this directory or by using the built-in
% pol2cart with some extra reading of documentation.




% make more convenient variables
S11 = S(1,1);
S12 = S(1,2);
S21 = S(2,1);
S22 = S(2,2);



% Compute and return Gamma in cartesian form.
GammaOut = S22 + (S12 .* S21 .* GammaS)./ (1- (S11 .* GammaS));

end