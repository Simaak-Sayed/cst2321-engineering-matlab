%% Week 12 - Regression Model Selection and Evaluation

load carsmall;
data = table(MPG, Cylinders, Displacement, Horsepower, Weight, Acceleration, Model_Year, Origin);
data = removevars(data, {'Origin'}); % Remove non-numeric variable

% Remove missing values
data = rmmissing(data);

%% 1. Fit a linear regression model using multiple predictors
mdl1 = fitlm(data, 'MPG ~ Cylinders + Horsepower + Weight + Acceleration');
disp(mdl1);

aic_val = mdl1.ModelCriterion.AIC;
bic_val = mdl1.ModelCriterion.BIC;
fprintf('AIC: %.2f\n', aic_val);
fprintf('BIC: %.2f\n', bic_val);

%% 2. Fit a comparison model
mdl2 = fitlm(data, 'MPG ~ Cylinders + Weight');

% RMSE values
rmse1 = sqrt(mdl1.MSE);
rmse2 = sqrt(mdl2.MSE);
fprintf('Model 1 RMSE: %.2f\n', rmse1);
fprintf('Model 2 RMSE: %.2f\n', rmse2);

%% 3. Stepwise regression
stepwiseModel = stepwiselm(data, 'MPG ~ Cylinders + Horsepower + Weight + Acceleration', 'Criterion', 'AIC');
disp(stepwiseModel);

%% 4. Residuals Analysis
predictions = predict(mdl1, data);
residuals = mdl1.Residuals.Raw;

% Residuals vs. Predicted MPG Plot
figure;
subplot(1, 2, 1);
scatter(predictions, residuals);
xlabel('Predicted MPG');
ylabel('Residuals');
title('Residuals vs Predicted MPG');
grid on;
axis tight; 

% Histogram of Residuals
subplot(1, 2, 2);
histogram(residuals, 15);
xlabel('Residuals');
ylabel('Frequency');
title('Residuals Distribution');
grid on;

%% 5. Simulation for Ionosphere dataset
numSamples = 351; 
numFeatures = 34; 
features = rand(numSamples, numFeatures);
classes = randi([0, 1], numSamples, 1); 

ionosphere_data = array2table(features);
ionosphere_data.Class = categorical(classes);

%% 6. SVM Model

SVMModel = fitcsvm(ionosphere_data(:, 1:end-1), ionosphere_data.Class);

[~, score] = predict(SVMModel, ionosphere_data(:, 1:end-1));

scores = score(:, 2);

predictedClasses = scores > 0.5; 

% Plot 1: Histogram of Scores
figure;
histogram(scores, 20);
xlabel('Scores (Probability of Being in Positive Class)');
ylabel('Frequency');
title('Histogram of SVM Scores for Positive Class');
grid on; 

%% 7. Generate ROC curve
[x, y, t, AUC] = perfcurve(ionosphere_data.Class, scores, '1'); 

% Plot ROC curve
figure;
plot(x, y, 'LineWidth', 2);
xlabel('False Positive Rate');
ylabel('True Positive Rate');
title(['ROC Curve (AUC = ', num2str(AUC), ')']);
grid on;
axis equal; 

%% 8. Confusion Matrix

predictedLogical = scores > 0.5; 

predictedClasses = categorical(predictedLogical, [false, true], {'Bad', 'Good'}); 

confusionMat = confusionmat(ionosphere_data.Class, predictedClasses); 

presentLabels = unique([categories(ionosphere_data.Class), categories(predictedClasses)]);

figure;
confusionchart(confusionMat, presentLabels, 'Title', 'Confusion Matrix for SVM Model');

%% 9. Model Evaluation

truePositives = confusionMat(2, 2);
falsePositives = confusionMat(1, 2); 
trueNegatives = confusionMat(1, 1); 
falseNegatives = confusionMat(2, 1); 

precision = 0; 
recall = 0;

if (truePositives + falsePositives) > 0
    precision = truePositives / (truePositives + falsePositives);
end

if (truePositives + falseNegatives) > 0
    recall = truePositives / (truePositives + falseNegatives);
end

fprintf('Precision: %.2f\n', precision);
fprintf('Recall: %.2f\n', recall);
