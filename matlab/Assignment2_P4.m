% Assignment 2 Problem 4
%% Variables

number1 = 0;
sum = 0;
tries = 0;

%% Code

while sum < 20
    number1 = randi(20); %generates random positive integers up to 20
    sum = sum + number1; % adds current random integer to previous
    tries = tries +1; % keeps track of amount of loop iterations
    disp(number1); % shows random integer(s)
end


disp(sum);

disp(tries);