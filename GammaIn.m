function GammaIn = GammaIn(S, GammaL)
%% This is a simple function that calculates the input reflection coefficient given 2 arguments. The first argument is the device 
% S-parameter matrix in the form specified below and the second is the load reflection coefficient defined by Zo and ZL of the system.
% requires first argument to be a 2 by 4 matrix of S parameters of the following format
% [S11_mag, S11_phase, S12_mag, S12_phase; S21_mag, S21_phase, S22_mag, S22_phase]
%
% Similarly, GammaL is expected as a 2-element array  (polar)

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

% Extract GammaL and convert to cartesian
[GammaL_real, GammaL_imag] = pol2cart(deg2rad(GammaL(2)),GammaL(1));
GammaL = GammaL_real + j*GammaL_imag;

% Compute and return Gamma in cartesian form.
GammaIn = S11 + (S12 .* S21 .* GammaL)./ (1 - (S22 .* GammaL));



    
    
    
endfunction
