% Forward Euler Method
function y = forward_euler(f, t_values, y0, h)
  N = length(t_values);
  y = zeros(1,N);
  y(1) = y0;

  for n = 1:N-1
    y(n+1) = y(n) + h * f(t_values(n), y(n));
  endfor
end
