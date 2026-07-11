load ionosphere;
Y = categorical(Y); 
tabulate(Y); 


xy = tsne(X, 'Verbose', 1);
figure; 
scatter(xy(:,1), xy(:,2), [], Y, 'filled');
title('t-SNE Visualization of Ionosphere Data');
xlabel('t-SNE Dimension 1');
ylabel('t-SNE Dimension 2');

cvp = cvpartition(Y, 'Holdout', 0.3, 'Stratify', true);
X_train = X(training(cvp), :);
Y_train = Y(training(cvp), :);
X_test = X(test(cvp), :);
Y_test = Y(test(cvp), :);


svm = fitcsvm(X_train, Y_train, ...
    'Standardize', true, ...
    'KernelFunction', 'rbf', ...
    'KernelScale', 'auto');


Y_pred = predict(svm, X_test);
accuracy = mean(Y_pred == Y_test);
fprintf('Test Set Accuracy: %.2f%%\n', accuracy * 100);


figure; 
confusionchart(Y_test, Y_pred);
title('Confusion Matrix for SVM Classifier');

xy = tsne(X, 'Verbose', 1);
figure; 
scatter(xy(:,1), xy(:,2), [], Y, 'filled');
hold on;
scatter(xy(svm.IsSupportVector,1), xy(svm.IsSupportVector,2), 62, 'r'); 
title('t-SNE Visualization with Support Vectors');
xlabel('t-SNE Dimension 1');
ylabel('t-SNE Dimension 2');
