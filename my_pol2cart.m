function complex_mat = my_pol2cart(mag,angle)
% Converts to real and imaginary form (cartesian) given magnitude and angle of polar form number.
% My function uses the exp() function as used in the MATLAB RFToolbox documentation for s2z.
% Designed to operate on 2 by 2 matrices for now only. Because of this, both mag and angle are
% expected to be 2 by 2 matrices holding magnitudes and respective angles in same matrix positions.

% initialize return value variable

% if mag and angle are given as 4 element matrix but not neccessarily as 2 by 2, we should reform them.
if length(mag) == 4 && length(angle) == 4
    mag = reshape(mag,2,2);
    angle = reshape(angle,2,2);
end    
    

% accept array of magnitudes
% if given both args, first matri assumed to be 2 x 2 matrix of S param mags
% and second matrix a 2 x 2 matrix of S-param angles
if nargin == 2
    complex_mat = [0,0;0,0];            % pre-allocate space
    complex_mat(1,1) = mag(1,1) * exp(j*(angle(1,1)/(180))*pi);
    complex_mat(1,2) = mag(1,2) * exp(j*(angle(1,2)/(180))*pi);
    complex_mat(2,1) = mag(2,1) * exp(j*(angle(2,1)/(180))*pi);
    complex_mat(2,2) = mag(2,2) * exp(j*(angle(2,2)/(180))*pi);
elseif nargin == 1                      % otherwise, if first argument only supplied, assumed arg is [complex_mag, complex_phase_degrees])
    complex_mat = [0];                  % pre-allocate space
    complex_mat(1) = mag(1) * exp(j*(mag(2)/(180))*pi);
end


    
    

end
