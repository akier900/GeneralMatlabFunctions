function GammaOut = GammaOut(S, GammaS)
% Gammaout(S, GammaS).
% Computes GammaOut given S-parameters (complex 2  by 2 matrix) and GammaS. (1 by 2 matrix)



% make more convenient variables
S11 = S(1,1);
S12 = S(1,2);
S21 = S(2,1);
S22 = S(2,2);



% Compute and return Gamma in cartesian form.
GammaOut = S22 + (S12 .* S21 .* GammaS)./ (1- (S11 .* GammaS));

end