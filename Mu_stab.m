function [mu_stab1, mu_stab2] = Mu_stab(S)
% S param assumed to be of form S = [S11_mag, S11_phase, S12_mag, S12_phase; S21_mag, S21_phase, S22_mag, S22_phase].

    
% convert to cartesian form for calculations
[S11_real, S11_imag] = pol2cart(deg2rad(S(1,2)),S(1,1));
[S12_real, S12_imag] = pol2cart(deg2rad(S(1,4)),S(1,3));
[S21_real, S21_imag] = pol2cart(deg2rad(S(2,2)),S(2,1));
[S22_real, S22_imag] = pol2cart(deg2rad(S(2,4)),S(2,3));

% finish conversion. Assign to single variables.
S11 = S11_real + j*S11_imag;
S12 = S12_real + j*S12_imag;
S21 = S21_real + j*S21_imag;
S22 = S22_real + j*S22_imag;

S_complex = [S11, S12; S21, S22];
delta = det(S_complex);



mu_stab1 = (1 - (abs(S11).^2)) ./ (abs(S22 - delta.*conj(S11)) + abs(S12.*S21));
mu_stab2 = (1 - (abs(S22).^2)) ./ (abs(S11 - delta.*conj(S22)) + abs(S12.*S21));



endfunction
