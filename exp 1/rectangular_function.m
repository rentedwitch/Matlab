clear all;
close all;
clc;
t=-5:0.01:5; %defining time axis
length_of_t=length(t); %determining length of matrix t
for i=1:1:length(t)  %definig loop
    if t(i)<-1;
        y(i)=0;   %if t<-1 y=0
    elseif (t(i)>=-1 && t(i)<=1)  %if t>=-1 and t<=1 y=1
        y(i)=1;
    else
        y(i)=0; % t>1 y=0
    end
end
plot(t,y);
xlabel("Time (t)");      %labelling axes
ylabel("function y(t)");
title("rectangular function");
axis([-5 5 -0.5 1.5])
    
    