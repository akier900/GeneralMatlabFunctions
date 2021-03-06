function Gamma_MS = Gamma_MS(S)
	 % Given S in complex form (2 x 2) use function my_cart2pol to
% help if given in polar form.This computes Gamma input of transistor or active device wants to see in simulaneous conj. matching scenario


  
s11 = S(1,1);
s12 = S(1,2);
s21 = S(2,1);
s22 = S(2,2);

delta = det(S)
  
B1 = 1 + abs(s11).^2 - abs(s22).^2 - abs(delta).^2
C1 = s11 - delta.*conj(s22)


Gamma_MS = [0,0] 		% has 2 solutions. only one makes sense

Gamma_MS(1) = (B1 + sqrt((B1.^2) - (4.* abs(C1).^2)))./(2.*C1);
Gamma_MS(2) = (B1 - sqrt((B1.^2) - (4.* abs(C1).^2)))./(2.*C1)
end
