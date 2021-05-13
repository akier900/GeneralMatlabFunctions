clc
clear all
format short eng 

% Define system impedance
% and operating frequency
zo = 50;                             
f = 700e6;


% Choose shunt or series component
Delta_b = 0.2
Delta_x = 2;



%% calculations for shunt components
%cap
Cshunt_val = ShuntC_B(f, Delta_b, zo)
%ind
Lshunt_val = ShuntL_B(f, Delta_b, zo)


%% calculations for series components
%cap
Cseries_val = SeriesC_X(f,Delta_x, zo)
%ind
Lseries_val = SeriesL_X(f, Delta_x, zo)