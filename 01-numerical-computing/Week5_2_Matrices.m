%clc
A = [1 2 3; 4 5 6; 7 8 9]; % use a terminating semi-colon to
% suppress console output
% 3 rows  and 3 columns


A(2,3)
A(3,3)=99

A(3,:) % row 3 all columns
A(:,1:2) % all rows column 1 and 2

A(1,:)=[]
v= [1 4 7 10 13];
A(4,:)=v(1:3);

A

A = [A, zeros(size(A,1), 2)] % add 2 columns to A with zeo values

A (4,5)=18

% create matrix B
B =magic(5) % generates a special matrix where the sums of the elements
% in the rows, columns, and diagonals are the same


C = [A B] % concatenate with error why ?
C=[A;B]

B=