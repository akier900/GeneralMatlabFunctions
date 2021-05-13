function C = ShuntC_B(f, deltaB_norm, zo)
    B = deltaB_norm ./ zo;
    omega = 2 * pi .* f;                % radian frequency
    C = B ./ omega;                % value of shunt capacitor
end
