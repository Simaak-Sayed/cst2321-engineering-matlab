[svm_posterior, scoreTransform] = fitPosterior(svm, X_train, Y_train);

[Y_pred_prob, scores] = predict(svm_posterior, X_test);

disp('Predicted Probabilities for Test Set:');
disp(scores(1:5, :)); 

accuracy_prob = mean(Y_pred_prob == Y_test);
fprintf('Accuracy with Probability Predictions: %.2f%%\n', accuracy_prob * 100);
