function [Pmw, Pdbm] = rf_det_pow(v)
%rf_det_pow This function takes the voltage measured using 1N4148
%Diode (power) detector and gives result in mW and converts to dBm
%   v can be passed as an array of voltage measurements.

    
    % diode reverse voltage and system impedance assumptions. 
    Vr = 0.6;
    zo = 50;
    
    % power in watts is approximately
    Pw = ((v + Vr).^2)./(2.*zo);
    % convert to mW
    Pmw = Pw.*(10^3);
    Pdbm = 10.*log10(Pmw);

   
end

