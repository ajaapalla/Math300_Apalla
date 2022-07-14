%% variables
l = 10; %length of interval
h = l/n; 
n = 100; %amount of space steps

%% code
x = 0;
for i = 1:n
    x(i+1) = x(i) + h.*(i^2+i+1);
end

space = linspace(0,l,n+1);
plot(space,x);