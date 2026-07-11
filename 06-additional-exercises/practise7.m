% Posterior Probabilities
[posteriorProbs] = hmmdecode(seq, T, E);
disp('Posterior Probabilities:');
disp(posteriorProbs);
