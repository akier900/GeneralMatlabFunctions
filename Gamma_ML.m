function Gamma_ML = Gamma_ML(S)
	 % Given S in complex form (2 x 2) use function my_cart2pol to
% help if given in polar form.This computes Gamma input of transistor or active device wants to see in simulaneous conj. matching scenario


  
s11 = S(1,1);
s12 = S(1,2);
s21 = S(2,1);
s22 = S(2,2);

delta = det(S)
  
B2 = 1 + abs(s22).^2 - abs(s11).^2 - abs(delta).^2
C2 = s22 - delta.*conj(s11)


Gamma_ML = [0,0] 		% has 2 solutions. only one makes sense

Gamma_ML(1) = (B2 + sqrt((B2.^2) - (4.* abs(C2).^2)))./(2.*C2);
Gamma_ML(2) = (B2 - sqrt((B2.^2) - (4.* abs(C2).^2)))./(2.*C2)
end
