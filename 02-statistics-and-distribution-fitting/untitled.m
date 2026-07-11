% Sample data for 'price'
price = [175000, 1250000, 450000, 600000, 1774000, 235000, 350000, 520000, 195000, ...
         995000, 449000, 560000, 2700000, 1750000, 1500000, 540000, 599000, 634000, ...
         1750000, 1050000, 1100000, 2700000, 3000000, 500000, 1000000, 750000, ...
         500000, 1800000, 450000, 1855000, 207000, 380000, 1400000, 275000, 760000];

% Plot histogram
figure;
histogram(price, 'Normalization', 'pdf', 'FaceColor', 'cyan', 'EdgeColor', 'black');
hold on;

% Fit and plot the PDF
pd = fitdist(price', 'Normal'); % Fit a normal distribution
x_values = linspace(min(price), max(price), 100); % Generate x-axis values based on data range
pdf_values = pdf(pd, x_values); % Get PDF values
plot(x_values, pdf_values, 'LineWidth', 2, 'Color', 'blue'); % Plot the PDF

% Set axis limits
xlim([min(price) max(price)]);
ylim([0 10]);

% Add titles and labels
title('Probability Distribution of Car Prices');
xlabel('Car Price');
ylabel('Probability Density');
legend('Price Histogram', 'Fitted PDF');
hold off;
