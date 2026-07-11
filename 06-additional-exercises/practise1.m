% State Diagram
states = {'Red Die', 'Green Die'};
transitionMatrix = [0.9, 0.1; 0.05, 0.95]; % Transition probabilities

% Visualize the state diagram
G = digraph(transitionMatrix, states);
plot(G, 'EdgeLabel', G.Edges.Weight);
title('State Diagram for Two-State HMM');
