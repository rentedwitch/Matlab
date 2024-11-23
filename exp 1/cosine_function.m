clear all;
close all;
clc;

t=-10:0.01:10;  %time axis representation
length_of_t=length(t); %length of no of points in time (t)
for i=1:1:length_of_t
    y(i)=1*sin(2*pi*t(i)); %representation of function
end

plot(t,y)
xlabel("time (t)");  %naming x axis
ylabel("function y(t)");   %naming y axis
title("continuous sine wave");   %title
axis([-1 1 -1.25 1.25]);  %restricting axis
