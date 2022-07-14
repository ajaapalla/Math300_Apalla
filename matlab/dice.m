dice1 = 0;
dice2 = 0;
tries = 0;
totaltries = 0;
while dice1 < 6 || dice2 <6
    dice1 = randi(6);
    dice2 = randi(6);
    tries = [dice1 dice2];
    disp(tries);
    totaltries = totaltries +1; %just counts amount of iterations
end

disp(totaltries);

