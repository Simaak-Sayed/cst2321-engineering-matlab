mul = [1 2];
sigmal = [3 .2; .2 2];
compl = mvnrnd(mul, sigmal, 800);

mu2 = [-1 -2];
sigma2 = [2 0; 0 1];
comp2 = mvnrnd(mu2, sigma2, 500);

X = [compl ; comp2]

figure
scatter(X(:,1), X(:,2), '.')
axis equal
