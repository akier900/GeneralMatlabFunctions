function Gp = Gp(S, GammaL)
% Gp(S, GammaL)

  
% Compute needed Gamma In value
GammaIn = S(1,1) + (S(1,2) .* S(2,1) .* GammaL)./ (1 - (S(2,2) .* GammaL));

% compute and return Operating Gain in cartesian form
Gp1 = (1 ./ (1 - (abs(GammaIn).^2)));
Gp2 = abs(S(2,1)).^2;
Gp3 = (1 - (abs(GammaL)^2)) ./ (abs(1 - (S(2,2) .* GammaL))^2);
Gp = Gp1 .* Gp2 .* Gp3;

							       end
