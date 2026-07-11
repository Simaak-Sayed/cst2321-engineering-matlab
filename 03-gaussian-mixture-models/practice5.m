gmm = fitgmdist(X,2)
scatter(X(:,1), X(:,2), '.')
axis equal
hold on
fcontour(@(x1,x2) pdf(gmm, [x1 x2]));
gmm.Sigma
gmm = fitgmdist(X,2, 'Options', statset('Display','iter','MaxIter',1500))