function  [cs, rs] = InputStabCircle(s)
  % [rs, cs] = InputStabCircle(s) This calculates the radius and center
  % coordinates of the input stability circle in relation to a unity smith chart
  % maybe will want to expand to also draw/shade the circles. 


s11 = s(1,1);
s12 = s(1,2);
s21 = s(2,1);
s22 = s(2,2);

% calculate determinant of s-parameter matrix
delta = det(s);
  
% calculate center and radii coordinates for stability circles
cs = conj(s11 - delta .* conj(s22)) ./ (abs(s11).^2 - abs(delta).^2);
rs = abs( (s12 .* s21) ./ (abs(s11).^2 - abs(delta).^2));

 
end