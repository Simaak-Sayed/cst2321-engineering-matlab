% creating a mesh grid with the x values ranging from -10 to 10
[p1 p2] = meshgrid(-10:0.25:10);
imagesc(p1) %to see the values (2D coordinates)
imagesc(p2) %to see the values (2D coordinates)

%forward pass for al entries in the meshgrid
y = feval(func1, [p1(:) p2(:)] * W1' + b1); %p1(:) changes array p1 into a list
y = feval(func2, y * W2' + b2);

%output is a list of y values. reshaping it into 2D array
y = reshape(y, length(p1), length(p2));

%displaying output (surface plot)
surf(p1, p2,y)
xlabel('input 1')
ylabel('input 2')
zlabel('network output y')