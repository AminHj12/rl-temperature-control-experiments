% Read the CSV files
data1 = readmatrix('Norm2_Delta.csv');
data2 = readmatrix('Total_Data.csv');
% Extract columns
number_plot = 2500;
counter1 = data1(1:number_plot, 1);
norm2_delta = data1(1:number_plot, 2);
counter2 = data2(1:number_plot, 1);
fom = data2(1:number_plot, 15);
% Create Plots and set the settings
norm2_clr = [0.45, 0.20, 0.60]; % Violet-Purple
fom_clr = [0.00, 0.45, 0.25]; % Dark-Green
set(groot, 'DefaultAxesFontName', 'Times New Roman');
set(groot, 'DefaultTextFontName', 'Times New Roman');
Fig = figure('Units', 'inches', 'position', [2, 1, 3.5, 1.75]);
tl = tiledlayout(2, 1, 'TileSpacing', 'tight', 'Padding', 'compact');
ax1 = nexttile(tl);
ax2 = nexttile(tl);
hold(ax1, 'on');
hold(ax2, 'on');
% Ax-1
set(Fig, 'Renderer', 'painters');
plot(ax1, counter1, norm2_delta, 'Color', norm2_clr, 'LineWidth', 1.25);
xlabel(ax1, {'Training Step', '(a)'});
ylabel(ax1, '||\Delta||^2', 'Interpreter', 'tex'); 
grid(ax1, 'on');
box(ax1, 'on');
xlim(ax1, [0, 2500]);
xticks(ax1, 0:250:2500);
ylim(ax1, [0, 0.0039]);
y_ticks = 0:0.001:0.0039;
yticks(ax1, y_ticks);
yticklabels(ax1, arrayfun(@(x) sprintf('%.3f', x), y_ticks, 'UniformOutput', false));
ax1.LineWidth = 1;
ax1.FontSize = 8;
ax1.XColor = [0, 0, 0];
ax1.YColor = [0, 0, 0];
% Ax-2
set(Fig, 'Renderer', 'painters');
plot(ax2, counter2, fom, 'Color', fom_clr, 'LineWidth', 1.25);
xlabel(ax2, {'Training Step', '(b)'});
ylabel(ax2, 'FOM');
grid(ax2, 'on');
box(ax2, 'on');
xlim(ax2, [0, 2500]);
xticks(ax2, 0:250:2500);
ylim(ax2, [0, 24]);
yticks(ax2, 0:8:24);
ax2.LineWidth = 1;
ax2.FontSize = 8;
ax2.XColor = [0, 0, 0];
ax2.YColor = [0, 0, 0];