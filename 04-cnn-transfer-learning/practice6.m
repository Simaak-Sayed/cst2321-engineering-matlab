%view input weights
net.IW{1}
%view input bias
net.b{1}

% view weights of hidden layer 2
net.LW{2,1}
net.b{2}
boxplot(net.LW{2,1}(:))
surf(net.LW{3,2})

%view weights of output layer
net.LW{3,2}
net.b{3}