 %% Heun's Method (RK2)
function [x, y] = rk2_heun(f, x0, xn, y0, h)
    N = (xn - x0) / h;
    x = linspace(x0, xn, N+1);
    y = zeros(1, N+1);
    y(1) = y0;

    for i = 1:N
        k1 = f(x(i), y(i));
        k2 = f(x(i) + h, y(i) + h * k1);
        y(i+1) = y(i) + (h/2) * (k1 + k2);
    end
end
