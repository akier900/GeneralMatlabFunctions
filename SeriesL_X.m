function L = SeriesL_X(f, deltaX_norm, zo)
    X = deltaX_norm .* zo;
    omega = 2*pi.*f;                    % radian frequency
    L = X ./ omega;                     % value of series inductance
end

