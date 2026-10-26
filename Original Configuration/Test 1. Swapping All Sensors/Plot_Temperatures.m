% Read the CSV file
cmp1 = readmatrix('Compartment1_Data.csv');
cmp2 = readmatrix('Compartment2_Data.csv');
cmp3 = readmatrix('Compartment3_Data.csv');
cmp4 = readmatrix('Compartment4_Data.csv');
% Extract columns
number_plot = 2750;
counter = cmp1(1:number_plot, 1);
target1 = cmp1(1:number_plot, 2);
target2 = cmp2(1:number_plot, 2);
target3 = cmp3(1:number_plot, 2);
target4 = cmp4(1:number_plot, 2);
sensor1 = cmp1(1:number_plot, 3);
sensor2 = cmp2(1:number_plot, 3);
sensor3 = cmp3(1:number_plot, 3);
sensor4 = cmp4(1:number_plot, 3);
% Set the settings
set(groot, 'DefaultAxesFontName', 'Times New Roman');
set(groot, 'DefaultTextFontName', 'Times New Roman');
Fig = figure('Units', 'inches', 'position', [1, 1, 3.5, 1.4]);
tl = tiledlayout(1, 1, 'TileSpacing', 'tight', 'Padding', 'compact');
ax1 = nexttile(tl);
hold(ax1, 'on');
% Colors
color11 = [0.00, 0.00, 0.00]; % Target-1: Black
color21 = [0.60, 0.20, 0.00]; % Target-2: Brown
color31 = [0.50, 0.50, 0.50]; % Target-3: Gray
color41 = [0.55, 0.30, 0.85]; % Target-4: Violet
color12 = [0.00, 0.00, 1.00]; % Sensor-1: Blue
color22 = [0.00, 0.45, 0.25]; % Sensor-2: Green
color32 = [1.00, 0.00, 0.00]; % Sensor-3: Red
color42 = [1.00, 0.50, 0.00]; % Sensor-4: Orange
% Create Plots
set(Fig, 'Renderer', 'painters');
plt_11 = plot(ax1, counter, target1, '-.', 'color', color11, 'LineWidth', 1.25);
plt_21 = plot(ax1, counter, target2, '-.', 'color', color21, 'LineWidth', 1.25);
plt_31 = plot(ax1, counter, target3, '-.', 'color', color31, 'LineWidth', 1.25);
plt_41 = plot(ax1, counter, target4, '-.', 'color', color41, 'LineWidth', 1.25);
plt_12 = plot(ax1, counter, sensor1, '-', 'color', color12, 'LineWidth', 1.25);
plt_22 = plot(ax1, counter, sensor2, '-', 'color', color22, 'LineWidth', 1.25);
plt_32 = plot(ax1, counter, sensor3, '-', 'color', color32, 'LineWidth', 1.25);
plt_42 = plot(ax1, counter, sensor4, '-', 'color', color42, 'LineWidth', 1.25);
title(ax1, 'Target and Sensor Temperatures vs. Training Step');
xlabel(ax1, 'Training Step');
ylabel(ax1, 'Temperature (°C)');
lgd = legend(ax1, [plt_11, plt_12, plt_21, plt_22, plt_31, plt_32, plt_41, plt_42], ...
      {'Target-1', 'Sensor-1', 'Target-2', 'Sensor-2', 'Target-3', 'Sensor-3', 'Target-4', 'Sensor-4'}, ...
       'FontSize', 8, 'AutoUpdate', 'off', 'NumColumns', 4);
lgd.ItemTokenSize = [12, 12];
grid(ax1, 'on');
box(ax1, 'on');
xlim(ax1, [0, 2750]);
xticks(ax1, 0:250:2750);
ylim(ax1, [22, 35]);
yticks(ax1, 22:2:35);
ax1.LineWidth = 1;
ax1.FontSize = 8;
ax1.XColor = [0, 0, 0];
ax1.YColor = [0, 0, 0];