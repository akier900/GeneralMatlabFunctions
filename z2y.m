function y = z2y(z,zo)

% initialize y-param matrix
Y = [0, 0 ;0, 0];
  
% Define easier vars
z11 = z(1,1);
z12 = z(1,2);
z21 = z(2,1);
z22 = z(2,2);


  
% convert to y  
y(1,1) = z22/det(z);
y(1,2) = -z12/det(z);
y(2,1) = -z21/det(z);;
y(2,2) = z11/det(z);
end
