function [fo] = fres(L,C)
%FRES This function calculates the resonant frequency of an LC tank. Required args are component values.
%   Detailed explanation goes here

    fo = 1./(2.*pi.*sqrt(L.*C));
    
end

