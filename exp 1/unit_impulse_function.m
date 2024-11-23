clear all;
close all;
clc;
t=-10:0.01:10; %defining time axis
length_of_t=length(t); %determining length of matrix t
for i=1:1:length(t)  %definig loop
    if t(i)==0;
        y(i)=1;   %if t=0 then function=1
    else
        y(i)=0; % otherwise function=0
    end
end
plot(t,y);
xlabel("Time (t)");      %labelling axes
ylabel("function y(t)");
title("Unit impulse function");
axis([-10 10 -0.5 1.5])
    
    