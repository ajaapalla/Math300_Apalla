%loops makes code slower
%% for loops
%N=10;
%for a = 1:N 
  %  disp('a');
%end

%%loops
%vector = 1:5;
%sum = 0;
%for i = 1:length(vector)
  % sum = sum+vector(i);% this allows the sum variable to change for the given iterations
%end
%disp(sum)
%% while loops (infinite loops)
%a = 0; %so that the variable works with loop
%while a < 500
 %   a = randi(1000);
  %  disp(a);
%end

%% && or ||

%a = 0;
%while a < 500 || a > 600
 %   a = randi(1000);
  %  disp(a);
%end
%% Riemann Summ example

n = 100; %partitions
sum = 0;
for a = 1:n
    sum(a+1) = sum(a) + sin(a/n)*(1/n);
  disp(sum(a+1));
end

