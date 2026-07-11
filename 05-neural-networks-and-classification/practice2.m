svm_linear = fitcsvm(X_train, Y_train, ...
    'Standardize', true, ...
    'KernelFunction', 'linear');
Y_pred_linear = predict(svm_linear, X_test);
accuracy_linear = mean(Y_pred_linear == Y_test);

svm_poly = fitcsvm(X_train, Y_train, ...
    'Standardize', true, ...
    'KernelFunction', 'polynomial', ...
    'PolynomialOrder', 3);
Y_pred_poly = predict(svm_poly, X_test);
accuracy_poly = mean(Y_pred_poly == Y_test);

Y_pred_rbf = predict(svm, X_test);
accuracy_rbf = mean(Y_pred_rbf == Y_test);


fprintf('\nKernel Comparison:\n');
fprintf('Linear Kernel Accuracy: %.2f%%\n', accuracy_linear * 100);
fprintf('Polynomial Kernel Accuracy: %.2f%%\n', accuracy_poly * 100);
fprintf('Gaussian Kernel Accuracy: %.2f%%\n', accuracy_rbf * 100);
