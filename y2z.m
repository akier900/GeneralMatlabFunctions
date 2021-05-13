function z = y2z(y,zo)

% initialize z-param matrix
z = [0, 0 ;0, 0];
  
% Define easier vars
y11 = y(1,1);
y12 = y(1,2);
y21 = y(2,1);
y22 = y(2,2);

  
% convert to z  
z(1,1) = y22/det(y);
z(1,2) = -y12/det(y);
z(2,1) = -y21/det(y);;
z(2,2) = y11/det(y);
end
