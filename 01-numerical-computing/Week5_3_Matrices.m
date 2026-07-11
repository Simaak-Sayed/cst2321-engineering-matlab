A= magic(5)
B=rand(5,3)
C=rand(5,5)

Add_Matrix= A+C  % A and c same size

Mult_Matrix=A*B

%Conact_D=[A;B]

Concat_Matrix_Columns=[B C] % B, C should be same number of rows

Concat_Matrix_Rows= [A;C] % A, C show have same number of columns

diag(C)