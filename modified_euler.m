 % Modified Euler Method
function y = modified_euler(f, t_values, y0, h)
  N = length(t_values);
  y = zeros(1,N);
  y(1) = y0;

  for n = 1:N-1
     t_n = t_values(n);
        y_n = y(n);

        y_predictor = y_n + h * f(t_n, y_n); % Predictor step
        y_corrector = y_n + (h/2) * (f(t_n, y_n) + f(t_n + h, y_predictor)); % Corrector step

        y(n+1) = y_corrector;
  endfor
end
