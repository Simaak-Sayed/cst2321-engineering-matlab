[x, t] = cancer_dataset;
net = patternnet([10, 5]);
net.layers{1}.transferFcn = 'logsig'
net.layers{2}.transferFcn = 'logsig'
view(net)
net = train(net, x , t);
y= net(x);
plotconfusion(t, y)
