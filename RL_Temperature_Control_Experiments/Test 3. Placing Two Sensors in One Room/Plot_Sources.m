% Read the CSV file
data = readmatrix('DQN_Data.csv');
% Extract columns
number_plot = 2950;
counter = data(1:number_plot, 1);
action = data(1:number_plot, 2);
% Convert decimal actions (0–80) into 4-digit ternary actions
Action_1 = mod(action, 3); % LSB
Action_2 = mod(floor(action / 3), 3);
Action_3 = mod(floor(action / 9), 3);
Action_4 = mod(floor(action / 27), 3); % MSB
% Create Plots and set the settings
fan_clr = [0.00, 0.40, 0.70]; % Dark-Blue
heater_clr = [1.00, 0.40, 0.00]; % Dark-Orange
set(groot, 'DefaultAxesFontName', 'Times New Roman');
set(groot, 'DefaultTextFontName', 'Times New Roman');
Fig = figure('Units', 'inches', 'position', [4, 1, 10.5, 6]);
tl = tiledlayout(4, 1, 'TileSpacing', 'tight', 'Padding', 'compact');
ax1 = nexttile(tl);
ax2 = nexttile(tl);
ax3 = nexttile(tl);
ax4 = nexttile(tl);
hold(ax1, 'on');
hold(ax2, 'on');
hold(ax3, 'on');
hold(ax4, 'on');
% Ax-1
set(Fig, 'Renderer', 'painters');
idx2 = Action_1 == 2; % Red bars: Action_1 == 2
b2 = bar(ax1, counter(idx2), Action_1(idx2), 'FaceColor', heater_clr, ...
         'EdgeColor', heater_clr, 'BarWidth', 0.5);
idx1 = Action_1 == 1; % Blue bars: Action_1 == 1
b1 = bar(ax1, counter(idx1), Action_1(idx1), 'FaceColor', fan_clr, ...
         'EdgeColor', fan_clr, 'BarWidth', 0.5);
set(b1, 'BarLayout', 'stacked');
set(b2, 'BarLayout', 'stacked');
title(ax1, 'Room-1 Sources');
ylabel(ax1, 'ON/OFF');
legend(ax1, [b1, b2], {'Fan-1 ON','Heater-1 ON'}, 'FontSize', 14, 'AutoUpdate', 'off');
box(ax1,'on');
xlim(ax1, [-5, 3000]);
xticks(ax1, 0:300:3000);
ylim(ax1,[-0.04, 2.04]);
ax1.LineWidth = 2;
ax1.FontSize = 18;
ax1.XColor = [0, 0, 0];
ax1.YColor = [0, 0, 0];
% Ax-2
set(Fig, 'Renderer', 'painters');
idx2 = Action_2 == 2; % Red bars: Action_2 == 2
b2 = bar(ax2, counter(idx2), Action_2(idx2), 'FaceColor', heater_clr, ...
         'EdgeColor', heater_clr, 'BarWidth', 0.5);
idx1 = Action_2 == 1; % Blue bars: Action_2 == 1
b1 = bar(ax2, counter(idx1), Action_2(idx1), 'FaceColor', fan_clr, ...
         'EdgeColor', fan_clr, 'BarWidth', 0.5);
set(b1, 'BarLayout', 'stacked');
set(b2, 'BarLayout', 'stacked');
title(ax2, 'Room-2 Sources');
ylabel(ax2, 'ON/OFF');
legend(ax2, [b1, b2], {'Fan-2 ON','Heater-2 ON'}, 'FontSize', 14, 'AutoUpdate', 'off');
box(ax2,'on');
xlim(ax2, [-5, 3000]);
xticks(ax2, 0:300:3000);
ylim(ax2,[-0.04, 2.04]);
ax2.LineWidth = 2;
ax2.FontSize = 18;
ax2.XColor = [0, 0, 0];
ax2.YColor = [0, 0, 0];
% Ax-3
set(Fig, 'Renderer', 'painters');
idx2 = Action_3 == 2; % Red bars: Action_3 == 2
b2 = bar(ax3, counter(idx2), Action_3(idx2), 'FaceColor', heater_clr, ...
         'EdgeColor', heater_clr, 'BarWidth', 0.5);
idx1 = Action_3 == 1; % Blue bars: Action_3 == 1
b1 = bar(ax3, counter(idx1), Action_3(idx1), 'FaceColor', fan_clr, ...
         'EdgeColor', fan_clr, 'BarWidth', 0.5);
set(b1, 'BarLayout', 'stacked');
set(b2, 'BarLayout', 'stacked');
title(ax3, 'Room-3 Sources');
ylabel(ax3, 'ON/OFF');
legend(ax3, [b1, b2], {'Fan-3 ON','Heater-3 ON'}, 'FontSize', 14, 'AutoUpdate', 'off');
box(ax3,'on');
xlim(ax3, [-5, 3000]);
xticks(ax3, 0:300:3000);
ylim(ax3,[-0.04, 2.04]);
ax3.LineWidth = 2;
ax3.FontSize = 18;
ax3.XColor = [0, 0, 0];
ax3.YColor = [0, 0, 0];
% Ax-4
set(Fig, 'Renderer', 'painters');
idx2 = Action_4 == 2; % Red bars: Action_4 == 2
b2 = bar(ax4, counter(idx2), Action_4(idx2), 'FaceColor', heater_clr, ...
         'EdgeColor', heater_clr, 'BarWidth', 0.5);
idx1 = Action_4 == 1; % Blue bars: Action_4 == 1
b1 = bar(ax4, counter(idx1), Action_4(idx1), 'FaceColor', fan_clr, ...
         'EdgeColor', fan_clr, 'BarWidth', 0.5);
set(b1, 'BarLayout', 'stacked');
set(b2, 'BarLayout', 'stacked');
title(ax4, 'Room-4 Sources');
xlabel(ax4, 'Training Step');
ylabel(ax4, 'ON/OFF');
legend(ax4, [b1, b2], {'Fan-4 ON','Heater-4 ON'}, 'FontSize', 14, 'AutoUpdate', 'off');
box(ax4,'on');
xlim(ax4, [-5, 3000]);
xticks(ax4, 0:300:3000);
ylim(ax4,[-0.04, 2.04]);
ax4.LineWidth = 2;
ax4.FontSize = 18;
ax4.XColor = [0, 0, 0];
ax4.YColor = [0, 0, 0];