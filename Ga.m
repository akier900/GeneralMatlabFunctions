function Ga = Ga(S, GammaS)
% Ga(S, GammaS)

% Compute GammaOut in cartesian form.
GammaOut = S(2,2) + (S(1,2) .* S(2,1) .* GammaS)./ (1- (S(1,1) .* GammaS));


% compute and return Operating Gain (magnitude)
Ga1 = (1-abs(GammaS).^2) ./ abs(1 - S(1,1).*GammaS).^2;
Ga2 = abs(S(2,1).^2);
Ga3 = 1./ (1 - abs(GammaOut).^2);
 
Ga = Ga1 .* Ga2 .* Ga3;
    
    
    
endfunction
