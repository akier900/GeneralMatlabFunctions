function z = s2z(S,zo)

  % initialize z-param matrix
  z = [0, 0 ;0, 0];
  
% Define easier vars
  s11 = S(1,1);
  s12 = S(1,2);
  s21 = S(2,1);
  s22 = S(2,2);

  delta_s = (1 - s11) .* (1 - s22) - (s12 .* s21);
  
% convert to z  
  z(1,1) = (((1+s11) .* (1-s22) + (s12 .* s21)) .* zo) ./ delta_s;
  z(1,2) = (2 .* s12 .* zo) ./ delta_s;
  z(2,1) = (2 .* s21 .* zo) ./ delta_s;
  z(2,2) = (((1-s11) .* (1+s22) + (s12 .* s21)) .* zo) ./ delta_s;
end
