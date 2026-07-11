% Estimate State Sequence using Viterbi Algorithm
likelyStates = hmmviterbi(seq, T, E);
disp('Most Likely State Sequence:');
disp(likelyStates);

% Compute accuracy
accuracy = sum(states == likelyStates) / length(states);
fprintf('Accuracy of Viterbi Algorithm: %.2f%%\n', accuracy * 100);
