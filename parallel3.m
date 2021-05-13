function [Req] = parallel3(R1,R2,R3)
%PARALLEL3 This function takes in three parallel resistances and returns an equivelant resistor value.
%   See docstring of parralell2 function

    Req = ((1./R1) + (1./R2) + (1./R3)).^(-1);
    
end

