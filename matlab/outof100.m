%outof100

n=100000;

for i = 1:n
    dice1 = 0;
    dice2 = 0;
    totaltries = 0;
while dice1 < 6 || dice2 <6
    dice1 = randi(6);
    dice2 = randi(6);
     totaltries = totaltries +1;
end
    count(i) = totaltries;
end
avg_count = sum(count)/n;
disp(avg_count);

histogram(count,'Normalization','probability');