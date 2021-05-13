function [comp] = LC_from_res(X1,f)
%FRES_KNOW Given one of two components values and desired resonant
%frequency, this caluclates the value of the second required
%reactive component
%   Detailed explanation goes here

    omega = 2.*pi.*f;
    comp = 1./( (omega.^2) .* (X1));
    
    
    
end

