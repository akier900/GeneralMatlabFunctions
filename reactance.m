function [X] = reactance(val,f)
%REACTANCE Given a reactive component value and operating frequency
%this calculates the relevant reactance value
%   This function returns an array with 2 values. the first element is the reactance if
% the component is inductive, and the second if the component is capacitive.The first value MUST
% the component value and the second MUST be frequency.
    
    format ShortEng
    
    L = val;
    C = val;
    omega = 2.*pi.*f;
    xl = j.*omega.*L;
    xc = 1./(j.*omega.*C);
    
    fprintf("\nAnswer order: \t Inductor (Ohms) \t Capacitor (Ohms)\n");
    fprintf("\nImpedance:    \t %5.5e Oms      \t %5.5e Ohms      \n",imag(xl),abs(imag(xc)));
    X = [imag(xl),imag(xc)];
end

