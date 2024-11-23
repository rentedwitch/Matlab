clear all;
close all;
clc;
t=-10:0.01:10; %defining time axis
length_of_t=length(t); %determining length of matrix t
for i=1:1:length(t)  %definig loop
    if t(i)<0;
        y(i)=0;   %if t<0 y=0
    else
        y(i)=t(i); %if t>=0 y=t
    end
end
plot(t,y);
xlabel("Time (t)");      %labelling axes
ylabel("function y(t)");
title("Ramp function");
%axis([-10 10 -0.5 1.5])
    
    