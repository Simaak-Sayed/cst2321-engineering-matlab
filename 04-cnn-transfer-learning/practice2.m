W1 = [4 -2; 2.5 -3.1];  %weights of hidden layer
b1=[-3 4];   %bias of hidden nodes

W2 = [-1.5 2.3];   %weights of output node
b2 = 0.5;   %bias of output node

func1 = 'logsig'   %activation function of hidden nodes
func2 = 'purelin';   %activation function of the output node

out = feval(func1, x*W1' +b1);
y = feval(func2, out * W2' +b2)
