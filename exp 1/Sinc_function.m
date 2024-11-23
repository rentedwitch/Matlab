clear all;
close all;
clc;
theta=-10:0.01*pi:10; %defining angle in x axis
y=sinc(theta);% defining sinc function

plot(theta,y);
xlabel("Time (t)");      %labelling axes
ylabel("function y(t)");
title("Sinc function");
%axis([-10 10 -0.5 1.5])
    
    