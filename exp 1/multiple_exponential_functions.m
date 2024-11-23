clear all;
close all;
clc;
a=0.1:0.1:0.9;
t=-10:0.01:10; %defining time axis
length_of_t=length(t); %determining length of matrix t
length_of_a=length(a);% determining length of matrix a
for j=1:1:length_of_a %first loop wrt to a
    for i=1:1:length_of_t %2nd loop wrt to t
        if(t(i)<0)
            y(j,i)=0; %t<0 ,y=0
        elseif (t(i)==0)
            y(j,i)=1; %t=0, y=1
        else
            y(j,i)=exp(-a(j)*t(i));% t>0, y=exp wrt to a
        end
    end
end
plot(t,y);
xlabel("Time (t)");      %labelling axes
ylabel("function y(t)");
title("multiple exponential continuous function");
%axis([-10 10 -0.5 1.5])
    
    