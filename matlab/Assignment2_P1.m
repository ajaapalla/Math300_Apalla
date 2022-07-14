% Assignment 2 Problem 1
%% Variables
A = [2 -1 4; 9 6 2; 1 3 8];
B = ones(3);
x = [3;6;8];
y = [5 10 15];

%% Code

AtimesB = A*B;
Atimesx = A*x;
xtranB = x'*B; 
%Btimesy = B*y; # of columns dont match # of rows
%xtimesA = x*A; # of columns dont match # of rows
xtimesy = x*y;
ytimesx = y*x;
%xytran = x*y'; cant multiply 
xdoty = x.*y;
AdotB = A.*B;

