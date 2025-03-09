%% Backward Differentiation Formula (BDF-2)
function [x, y] = lmm_bdf(f, x0, xn, y0, h)
    N = (xn - x0) / h;
    x = linspace(x0, xn, N+1);
    y = zeros(1, N+1);
    y(1) = y0;

    % Use RK2 to get the second value
    k1 = f(x(1), y(1));
    k2 = f(x(1) + h, y(1) + h * k1);
    y(2) = y(1) + (h/2) * (k1 + k2);

    for i = 2:N
        y(i+1) = (4/3) * y(i) - (1/3) * y(i-1) + (2*h/3) * f(x(i+1), y(i+1));
    end
end
