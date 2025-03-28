% Backward Euler Method
function y = backward_euler(f, t_values, y0, h)
  N = length(t_values);
  y = zeros(1,N);
  y(1) = y0;

  for n = 1:N-1
    y(n+1) = (y(n) + h * sin(t_values(n+1))) / (1+ 50*h);
  endfor
end
