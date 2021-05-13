function L = ShuntL_B(f, deltaB_norm, zo)
    B = deltaB_norm ./ zo;
    omega = 2 * pi .* f;                % radian frequency
    L = 1./ (omega .* B);               % value of shunt inductor
end
