clear all;
close all;
clc;

t=-10:0.01:10;  %defining time range
length_of_t=length(t);  %no of points in time range
a=0.5;
for i=1:1:length(t)  
   if(t(i)<0)
       y(i)=exp(a*t(i));
   else
       y(i)=exp(-a*t(i));
   end
end

plot(t,y) %plotting the points
xlabel("time (t)");  %labelling x axis
ylabel("function y(t)");  %labelling y axis
title("continuous double sided exponential function"); %naming
%axis([-2 2 -0.25 1.25]); %constraining the range
