mu = 2 % the mean
sigma = 1.8 % the standarad deviation
x = -12:0.5:10   % generating -12,-11.5,-11,-10.5,-10

dist = -0.5 * ((x - mu) / sigma) .^ 2 
scale = 1 / (sigma * sqrt(2*pi))
g = scale * exp(dist)	% Gaussian
figure
plot(x, g)
xlabel('x') % label the x and y axes
ylabel('probability')
title('Plot of Gaussian distribution')

