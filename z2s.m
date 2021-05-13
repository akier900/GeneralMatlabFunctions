function s = z2s(Z,zo)

  % initialize z-param matrix
  s = [0, 0 ;0, 0];
  
% Define eazier vars
  z11 = Z(1,1)
  z12 = Z(1,2)
  z21 = Z(2,1)
  z22 = Z(2,2)

delta = (z11 + zo) .* (z22 + zo) - (z12 .* z21)
  
% convert to s  
  s(1,1) = ((z11 - zo).*(z22 + zo) - (z12 .* z21)) ./ delta
  s(1,2) = (2.*zo.*z12)./delta
  s(2,1) = (2.*zo.*z21)./delta
  s(2,2) = ((z11 + zo).*(z22 - zo) - (z12 .* z21)) ./ delta
end
