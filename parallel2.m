function [Req] = parallel2(R1,R2)
%PARALLEL2 This function takes in two component values (or arrays of values) in parallel configuration and returns the appropriate equivilant impedance.
%   As of this version only real impedance values are accepted as arguments.

    Req = (R1.*R2)./(R1+R2);



end
