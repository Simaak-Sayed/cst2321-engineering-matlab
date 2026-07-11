% Generate Test Sequence
[seq, states] = hmmgenerate(100, T, E); % Generate 100 emissions and states
disp('Generated Emission Sequence:');
disp(seq);
disp('Generated State Sequence:');
disp(states);
