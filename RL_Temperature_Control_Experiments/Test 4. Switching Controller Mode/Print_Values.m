% Selected Ranges
range_11 = 751;
range_12 = 1500;
range_21 = 1751;
range_22 = 2500;
range_1 = range_12 - range_11 + 1;
range_2 = range_22 - range_21 + 1;
% Read the CSV file and separate important values
data = readmatrix('Total_Data.csv');
total_err_11 = data(range_11, 2);
total_err_12 = data(range_12, 2);
total_err_21 = data(range_21, 2);
total_err_22 = data(range_22, 2);
total_ec_11 = data(range_11, 8);
total_ec_12 = data(range_12, 8);
total_ec_21 = data(range_21, 8);
total_ec_22 = data(range_22, 8);
% Calculate important values
delta_err_1 = total_err_12 - total_err_11;
delta_err_2 = total_err_22 - total_err_21;
delta_ec_1 = total_ec_12 - total_ec_11;
delta_ec_2 = total_ec_22 - total_ec_21;
avg_err_1 = delta_err_1 / range_1;
avg_err_2 = delta_err_2 / range_2;
avg_ec_1 = delta_ec_1 / range_1;
avg_ec_2 = delta_ec_2 / range_2;
% Print the results
fprintf('Total Temperature Error (%i-%i): %f\n', range_11, range_12, delta_err_1);
fprintf('Total Temperature Error Average (%i-%i): %f\n', range_11, range_12, avg_err_1);
fprintf('Total Energy Consumption (%i-%i): %i\n', range_11, range_12, delta_ec_1);
fprintf('Total Energy Consumption Average (%i-%i): %f\n\n', range_11, range_12, avg_ec_1);
fprintf('Total Temperature Error (%i-%i): %f\n', range_21, range_22, delta_err_2);
fprintf('Total Temperature Error Average (%i-%i): %f\n', range_21, range_22, avg_err_2);
fprintf('Total Energy Consumption (%i-%i): %i\n', range_21, range_22, delta_ec_2);
fprintf('Total Energy Consumption Average (%i-%i): %f\n\n', range_21, range_22, avg_ec_2);