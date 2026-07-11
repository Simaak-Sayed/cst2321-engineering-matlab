logLikelihoods = [];
logLikelihoods(end+1) = currentLogLikelihood;
iterations = 1:length(logLikelihoods);
plot(iterations, logLikelihoods, '-*');
xlabel('Iteration');
ylabel('Log-Likelihood');
title('EM Convergence');