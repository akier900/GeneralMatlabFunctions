function complex_mat = my_pol2cart(mag,angle)
% Converts to real and imaginary form (cartesian) given magnitude and angle of polar form number.
% My function uses the exp() function as used in the MATLAB RFToolbox documentation for s2z.
% Designed to operate on 2 by 2 matrices for now only. Because of this, both mag and angle are
% expected to be 2 by 2 matrices holding magnitudes and respective angles in same matrix positions.

% initialize return value variable
complex_mat = [0,0;0,0];

% accept array of magnitudes


complex_mat(1,1) = mag(1,1) * exp(j*(angle(1,1)/(180))*pi);
complex_mat(1,2) = mag(1,2) * exp(j*(angle(1,2)/(180))*pi);
complex_mat(2,1) = mag(2,1) * exp(j*(angle(2,1)/(180))*pi);
complex_mat(2,2) = mag(2,2) * exp(j*(angle(2,2)/(180))*pi);

end
