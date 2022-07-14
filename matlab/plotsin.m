x = -pi:0.1:pi;

plot(x,sin(x),'ob');
hold on 
plot(x,cos(x),'h');
xlabel('x values');
ylabel('y values');
title('y=sin(x) and y=cos(x)');

hold off
%plot(x,sin(x), x,cos(x)); %does the same thing in one line