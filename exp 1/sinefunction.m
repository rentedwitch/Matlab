clear all;
close all;
clc;

t=-10:0.01:10;  %defining time range
length_of_t=length(t);  %no of points in time range
a=0.1:0.1:0.9;
length_of_a=length(a);

for j=1:1:length_of_a 
    for i=1:1:length_of_t
   if(t(i)<0)
       y(j,i)=0;
   else
       y(j,i)=exp(-a(j)*t(i));
   end
    end
end

plot(t,y) %plotting the points
xlabel("time (t)");  %labelling x axis
ylabel("function y(t)");  %labelling y axis
title("multiple exponential continuous functions"); %naming
%axis([-2 2 -1.25 1.25]); %constraining the range
