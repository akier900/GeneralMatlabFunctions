function [L,C] = ReactToComp(reactance,f)
%REACTTOCOMP This function takes in reactance values and associated frequency, and outputs the neccessary component values that will achieve it.
%  For now, this functions acts only on scalar values. Effort must be made %  to expand functionality

% radian frequency
    omega = 2.*pi.*f;
    
% case for capacitance
    if reactance < 0
        L = 0;
        C = abs(1./(j.*omega.*reactance));
    elseif reactance > 0                % case for inductance
        C = 0;
        L = abs((reactance./(j.*omega)));
    else
        fprintf('Thats not how any of this works!\n');
    end

end                                     % end of ReactToComp
