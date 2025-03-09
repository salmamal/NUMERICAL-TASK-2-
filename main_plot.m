% Parameters
  t0 = 0; % Initial time
  tf = 2; % Final time
  y0 = 1; % Initial condition
  h = 0.04; % Step size
  t_values = t0:h:tf; % Time vector

% ODE function
  f = @(t, y) -50*y + sin(t);

% Numerical methods to solve ODE
  y_forward = forward_euler(f, t_values, y0, h);
  y_modified = modified_euler(f, t_values, y0, h);
  y_backward = backward_euler(f, t_values, y0, h);
  y_heun = heun(f, t0, tf, y0, h);
  y_midpoint = midpoint(f, t0, tf, y0, h);
  y_rk4 = rk4_classical(f, t0, tf, y0, h);
  y_adams_bashforth = lmm_adams_bashforth(f, t0, tf, y0, h);
  y_adams_moulton = lmm_adams_moulton(f, t0, tf, y0, h);
  y_bdf = lmm_bdf(f, t0, tf, y0, h);

% Plotting
  figure;
  plot(t_values, y_forward, 'r-'); hold on;
  plot(t_values, y_modified, 'b--');
  plot(t_values, y_backward, 'g-.');
  plot(t_values, y_heun, 'm:');
  plot(t_values, y_midpoint, 'c-');
  plot(t_values, y_rk4, 'k--');
  plot(t_values, y_adams_bashforth, 'y-.');
  plot(t_values, y_adams_moulton, 'b:');
  plot(t_values, y_bdf, 'g--');
  xlabel('Time (t)');
  ylabel('Solution (y)');
  legend('forward euler', 'modified euler', 'backward euler', 'heun', 'midpoint', 'rk4', 'adams-bashforth', 'adams-moulton', 'bdf');
  grid on;

