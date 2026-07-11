% Sample data for 'mileage'
mileage = [15000, 45000, 25000, 35000, 80000, 10000, 23000, 60000, 27000, ...
           150000, 50000, 52000, 12000, 65000, 20000, 72000, 36000, 41000, ...
           83000, 120000, 98000, 3000, 25000, 170000, 90000, 80000, ...
           67000, 190000, 47000, 45000, 15000, 22000, 95000, 27000, 110000];

% Plot histogram
figure;
histogram(mileage, 'Normalization', 'pdf', 'FaceColor', 'magenta', 'EdgeColor', 'black');
hold on;

% Fit and plot the PDF
pd_mileage = fitdist(mileage', 'Normal'); % Fit a normal distribution to mileage data
x_mileage = linspace(min(mileage), max(mileage), 100); % Generate x-axis values based on mileage range
pdf_mileage = pdf(pd_mileage, x_mileage); % Get PDF values for mileage
plot(x_mileage, pdf_mileage, 'LineWidth', 2, 'Color', 'red'); % Plot the PDF for mileage

% Set axis limits based on data range
xlim([min(mileage), max(mileage)]);
ylim([0, 1e-4]); % Adjust as necessary to fit PDF and histogram

% Add titles and labels
title('Probability Distribution of Car Mileage');
xlabel('Car Mileage');
ylabel('Probability Density');
legend('Mileage Histogram', 'Fitted PDF');
hold off;
