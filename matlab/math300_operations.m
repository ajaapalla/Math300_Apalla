A = [1 2; 3 4];
B = [5 6; 7 8];

AB = A*B; %matrix multiplication
AdotB = A.*B; %element-wise multiplication

newA = A.^2;
newa = A^2;

disp(newA);
disp(newa); %squares the A matrix 

A1 =[1 2 ; 3 4];

i=A1.^2;
disp(i);


A3 = A1';

D1 = inv(A);
Det = det(A);

matrix1 = [1 1 1 ; 1 1 1; 1 1 1];
disp(matrix1);
matrix1fast = ones(3,3);
disp(matrix1fast);

matrix2 = matrix1 - matrix1;
disp(matrix2);
matrix2fast = zeros(3,3);
disp(matrix2fast);

matrix3 = [1 0 0 ; 0 1 0; 0 0 1];
disp(matrix3);
matrix3fast = eye(3); %identity matrices are always square shaped
disp(matrix3fast);

%ranges are helpful for loops 
v = 1:10;

w = 1:2:9;

Anew = [1 2 3; 4 5 6; 7 8 9];
disp(Anew);
%matrix elements are defined by rows first then columns
disp(Anew(2,2));

%think of this as "slicing the matrix"
disp(Anew(3,:)); % for the 3rd row print all columns
disp(Anew(:,3)); % for all rows print the 3rd column
disp(Anew(1:2,1:2)); % now a 2x2 matrix for the upper left of the main matrix

p = rand;

message = ['The result is: 'num2str(p)];
%disp(message);