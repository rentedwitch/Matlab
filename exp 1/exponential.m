clear all;
close all;
clc;

t=-10:0.01:10;  %defining time range
length_of_t=length(t);  %no of points in time range
a=2;
for i=1:1:length(t)  
    if(t(i)<0)
        y(i)=0; %if t<0 ,y=0
    else
        y(i)=exp(-a*t(i)); %if t>0 ,y=exponential
    end
end

plot(t,y) %plotting the points
xlabel("time (t)");  %labelling x axis
ylabel("function y(t)");  %labelling y axis
title("continuous exponential function(a=2)"); %naming
%axis([-1 1 -1.25 1.25]); %constraining the range
