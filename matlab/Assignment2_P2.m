%Assignment 2 Problem 2
%% Variables
A = [1 1 1; 1 2 3; 1 3 6];
b = [1; -5; 2];
%% Code
% approach 1
anotherx = A\b;
% approach 2
x = linsolve(A,b);
disp(x);

disp(det(A));
disp(rank(A));