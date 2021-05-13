function Id = Idn_sat(beta, vtn, vgs)
% This function calculates current of an NMOS in an inverter in the
% saturation region.



Id = (beta./2).*(vgs-(vtn.^2));

endfunction