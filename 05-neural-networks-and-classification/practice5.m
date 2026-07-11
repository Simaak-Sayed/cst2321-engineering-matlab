load fisheriris;
X = meas;
Y = species;

linearSVM = templateSVM('KernelFunction', 'linear');

% Train without parallelization
tic;
ecocSerial = fitcecoc(X, Y, 'Learners', linearSVM);
timeSerial = toc;

% Train with parallelization
options = statset('UseParallel', true);
tic;
ecocParallel = fitcecoc(X, Y, 'Learners', linearSVM, 'Options', options);
timeParallel = toc;

% Display training times in a bar graph
figure;
bar([timeSerial, timeParallel]);
set(gca, 'XTickLabel', {'Serial', 'Parallel'});
ylabel('Training Time (seconds)');
title('Comparison of Serial vs Parallel Training');
