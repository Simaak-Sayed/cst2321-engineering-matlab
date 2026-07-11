mu = [2 3];
sigma = [1 1.5; 1.5 3]
rng default % for reproducability
data = mvnrnd(mu, sigma, 1000);
scatter(data(:,1), data(:,2), '.')
hold on;
fcontour(@(x1,x2) mvnpdf([x1 x2], mu, sigma));
colorbar