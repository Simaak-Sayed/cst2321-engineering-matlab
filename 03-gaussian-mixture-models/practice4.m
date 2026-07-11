mul = [1 2];
sigmal = [3 .2; .2 2];
compl = mvnrnd(mul, sigmal, 800);

mu2 = [-1 -2];
sigma2 = [2 0; 0 1];
comp2 = mvnrnd(mu2, sigma2, 4);

X = [compl ; comp2]

figure
scatter(X(:,1), X(:,2), '.')
axis equal
function p = mygmmm(x1,x2, w1, mul, sigmal, w2, mu2, sigma2)
    assert(w1 + w2 == 1.0, 'the weights of the components must add to 1.0')
    assert(all([w1 w2] >= 0 & [w1 w2]<= 1), 'the weights must be positive and in range 0 to 1')

    p = w1 * mvnpdf([x1 x2], mul, sigmal) + w2 * mvnpdf([x1 x2], mu2, sigma2);
end
figure
scatter(X(:,1), X(:,2), '.')
axis equal
fsurf(@(x1,x2) mygmmm(x1,x2, 800/804, mul, sigmal, 4/804, mu2, sigma2));

