load fisheriris
X = meas(:,3:4); % we will use 2 out of the 4 features only
gscatter(X(:,1), X(:,2), species)
gmm = fitgmdist(X, 3)
gscatter(X(:,1), X(:,2), species)
for k=1:gmm.NumComponents
    hold on
    fcontour(@(x1,x2) mvnpdf([x1 x2], gmm.mu(k,:), gmm.Sigma(:,:,k)));
end
legend off
