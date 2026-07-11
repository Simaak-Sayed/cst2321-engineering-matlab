% Clear previous figures
clf;

% Define the mean vector and covariance matrix
mu = [2 3];
sigma = [1 1.5; 1.5 3];

% Set random seed for reproducibility
rng default;

% Generate random data from a multivariate normal distribution
data = mvnrnd(mu, sigma, 1000);

% Scatter plot of the data points
scatter(data(:, 1), data(:, 2), '.');

hold on;
% Create a meshgrid for the PDF
[x1, x2] = meshgrid(linspace(min(data(:,1))-1, max(data(:,1))+1, 50), ...
                    linspace(min(data(:,2))-1, max(data(:,2))+1, 50));
z = mvnpdf([x1(:), x2(:)], mu, sigma);
z = reshape(z, size(x1));

% Contour plot of the multivariate normal PDF
contour(x1, x2, z, 'LineWidth', 1);
colorbar;
hold off;

figure;
% Plot marginal distribution for X1
subplot(1, 2, 1);
histogram(data(:, 1), 20, 'Normalization', 'pdf'); % Histogram for X1
hold on;
x1_range = linspace(min(data(:, 1))-1, max(data(:, 1))+1, 100);
pdf_x1 = normpdf(x1_range, mu(1), sqrt(sigma(1,1))); % Gaussian PDF for X1
plot(x1_range, pdf_x1, 'r', 'LineWidth', 1.5); % Plot Gaussian fit
xlabel('X1');
ylabel('Probability Density');
title('Marginal Distribution of X1');
hold off;

% Plot marginal distribution for X2
subplot(1, 2, 2);
histogram(data(:, 2), 20, 'Normalization', 'pdf'); % Histogram for X2
hold on;
x2_range = linspace(min(data(:, 2))-1, max(data(:, 2))+1, 100);
pdf_x2 = normpdf(x2_range, mu(2), sqrt(sigma(2,2))); % Gaussian PDF for X2
plot(x2_range, pdf_x2, 'r', 'LineWidth', 1.5); % Plot Gaussian fit
xlabel('X2');
ylabel('Probability Density');
title('Marginal Distribution of X2');
hold off;

figure;
hold on;
[x1, x2] = meshgrid(x1_range, x2_range);
F = mvnpdf([x1(:) x2(:)], mu, sigma);
F = reshape(F, size(x1)); % Reshape to match grid dimensions
% 3D Surface Plot of the Multivariate Gaussian Distribution
subplot(2,1,1);
surf(x1, x2,F, 'EdgeColor', 'none', 'FaceAlpha', 0.8);
colormap('jet');  % Use the same color map
colorbar;
title('3D Surface Plot of Multivariate Gaussian Distribution');
xlabel('X1');
ylabel('X2');
zlabel('Probability Density');
gridon;