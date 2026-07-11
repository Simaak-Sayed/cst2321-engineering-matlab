[estimatedT, estimatedE] = hmmestimate(seq, states);
disp('Estimated Transition Matrix:');
disp(estimatedT);
disp('Estimated Emission Matrix:');
disp(estimatedE);

% Initial guesses
T_guess = [0.85, 0.15; 0.1, 0.9];
E_guess = [0.17, 0.16, 0.17, 0.16, 0.17, 0.17; 
           0.6, 0.08, 0.08, 0.08, 0.08, 0.08];

% Use Baum-Welch Algorithm
[estimatedT_unknown, estimatedE_unknown] = hmmtrain(seq, T_guess, E_guess);
disp('Estimated Transition Matrix (Unknown States):');
disp(estimatedT_unknown);
disp('Estimated Emission Matrix (Unknown States):');
disp(estimatedE_unknown);
