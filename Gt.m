function Gt = Gt(S, GammaS, GammaL)
% Gt(S, GammaS, GammaL)
  
% Compute GammaOut in cartesian form.
GammaOut = S(2,2) + (S(1,2) .* S(2,1) .* GammaS)./ (1- (S(1,1) .* GammaS));

% compute and return Transducer Gain (magnitude)
Gt1 =  (1 - (abs(GammaS).^2))  ./ (abs(1 - S(1,1) .* GammaS)^2); 
Gt2 =  (abs(S(2,1)).^2); 
Gt3 =  (1 - (abs(GammaL)^2)) ./ (abs(1 - (GammaOut .* GammaL))^2);

Gt = Gt1 .* Gt2 .* Gt3;
    
    
endfunction



