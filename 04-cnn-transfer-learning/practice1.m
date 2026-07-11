W = [4,-2];     %weights
b=-3;           %bias
func = 'logsig'; %activation function
% 'tansig', 'purelin', 'poslin', 'hardlim'

x=[2 3];
linear_sum = x* W' + b;
y = feval(func, linear_sum)