%clc % clears the command window
clear %clears the variable ws
v1=[3,4]
v2=[1,2]
v= [1 4 7 10 13]
w = [2; 4; 9; 17; 23]
v3= 2:20


%{
% checking size of a vector
size (v)
size (w)
% Transpose of a vector v
v'
%aceessing vector elements v1
v1
v3(end:-2: 4)
v3(2:4)


% adding vectors
vadd=v1+v2

% scaled vector by 4
scaled_v1= 4*v1

% magnitude of vectors
norm(v1)
norm(v2)

% Compute Euclidean distance
distance = norm(v1 - v2)
% Compute Manhattan distance
manhattan_distance = sum(abs(v1 - v2))

% help log
dot(v1, v2)

% Compute the projection of v1 onto v2
projection = (dot(v1, v2) / dot(v2, v2)) * v2;

%}
