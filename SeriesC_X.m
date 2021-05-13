function C = SeriesC_X(f, deltaX_norm, zo)
    X = deltaX_norm .* zo;
    omega = 2 * pi .* f;                % radian frequency
    C = 1 ./ (omega.* X);           % value of series capacitor
end

