gmm_diag = fitgmdist(X, 2, 'CovarianceType', 'diagonal', 'Options', statset('Display','iter', 'MaxIter', 1500));

% Visualize results
figure;
scatter(X(:,1), X(:,2), '.');
hold on;
fcontour(@(x1,x2) pdf(gmm_diag, [x1 x2]), 'LineColor', 'g'); % Overlay PDF contours with diagonal covariance
axis equal;
title('GMM with Diagonal Covariance Matrices');
legend('Data Points', 'GMM Contours');
