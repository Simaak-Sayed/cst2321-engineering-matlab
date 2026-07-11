load fisheriris
gmm = fitgmdist(X, 3);
pred = cluster(gmm, X);
gscatter(X(:,1), X(:,2), species, 'rgb', '.') % show the groundtruth as asterisks
hold on
gscatter(X(:,1), X(:,2),pred, 'rgb', 'o') % show the predictions as circles
