function Id = Idp_lin(beta, vtp, vdd, vout, vin)
% This function calculates current of an PMOS in an inverter in the
% linear region.



vds = vdd - vout;
vgs = vin - vdd;
vsg = -vgs;
vsd = -vds;

Id = beta .* (vsg - abs(vtp) - (vsd./2)) .* vsd;
endfunction
