clear all;
close all;
clc;

x1 = linspace(-3, -1, 1000);  % First interval: -3 <= t < -1
x2 = linspace(-1, 1, 1000); % Second interval: -1 <= t < 1
x3 = linspace(1, 3, 1000); % Third interval: 1 <= t <= 3

y1 = exp(x1);% First interval: exponential function
y2 = cos(pi * x2);% Second interval: cosine function
y3 = x3.^2;% Third interval: quadratic function

y = [y1 y2 y3]; % Combined time vector
x = [x1 x2 x3]; % Combined signal values


subplot(6,2,[1,2]);% Use subplot 1 and 2 for the original signal
plot(x,y);  
title('Continuous-Time Signal');
grid on;

subplot(6,2,3);% 
plot(x/2,y);  
title('x(2t)');
grid on;

subplot(6,2,4); 
plot(2*x,y);  
title('x(0.5t) ');
grid on;

subplot(6,2,5);  
plot(x/2,3*y);  
title('3x(2t) ');
grid on;

subplot(6,2,6);  
plot(2*x,3*y);  
title('3x(0.5t) ');
grid on;

subplot(6,2,7);  
plot((x/2)-3,y);  
title('x(2t+3) ');
grid on;

subplot(6,2,8);  
plot((2*x)-3,y);  
title('x(0.5t+3)');
grid on;

subplot(6,2,9);  
plot((2*x)+3,4*y);  
title('4x(0.5t-3) ');
grid on;

subplot(6,2,10);  
plot((x/-3)+4,-2*y);  
title('-2x(-3t-4)');
grid on;

subplot(6,2,11);  
plot((x/-3)-6,-2*y);  
title('-2x(-3(t-2))');
grid on;