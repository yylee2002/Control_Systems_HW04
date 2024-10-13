%% HW04
close all; clear; clc;

%% Parameters
A = 1;
a = 1;
beta_list = [0.2, 0.4, 0.6, 0.8, 1];

% Transfer function setting
s = tf("s");
fig = figure(Name = "Step Response");
hold on;
for beta = beta_list
    sys = HW04_sys(s, A, a, beta);
    step(sys);
end
hold off;
lines = findobj(gcf, 'Type', 'line');
set(lines, 'LineWidth', 2);  % Set all lines to a thicker width of 2
grid on;
title("");
ylabel("The step response");
%axis([-inf, 7, -1.003, -0.9]);
legend_labels = arrayfun(@(x) sprintf('$\\beta=%.1f$', x), beta_list, 'UniformOutput', false);
lgd = legend(legend_labels, 'Interpreter', 'latex');
%set(lgd, 'interpreter', 'latex');
set(fig, "position", [100, 50, 1000, 550]);


% s = tf( "s" );
% sys = 1 / ( s + 50/1000 );
% step( 500*sys )