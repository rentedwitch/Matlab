clear all;
close all;
clc;
x=linspace(-1,1,100); % -1 is starting point and 1 is ending point divided into 100 divisions
y=sqrt(1-(x.^2));  %y is a function of x
a=linspace(2,4,100); %a is defined in another interval
b=sqrt(1-(a-3).^2); % b is function of a
c=linspace(1,1.5,25); % c is 1,1.5
y1=2.*(1-c); %y1 function of c
d=linspace(1.5,2,25); %d in 1.5,2
y2=(d-2)./0.5; %y2 function of d
z1=[x c]; %combine x and c independent
z2=[z1 d];% combine x c and d
z=[z2 a];% combine x c d a
q1=[y y1];% combine y and y1
q2=[q1 y2];%combine y y1 y2
q=[q2 b];%combine y y1 y2 b

subplot(4,2,[1,2]);%in subplot 1,2 is taken by original signal x(t)
plot(z,q);
title('x(t)');
%xlim([-1,4]);
%ylim([-1,2]);

subplot(4,2,3);%plot 3= x(2t)
plot(2*z,q);
title('x(2t)');
%xlim([-0.5,2]);
%ylim([-1,1]);

subplot(4,2,4);%plot 4=x(t+2)
plot(z-2,q);
title('x(t+2)');
%xlim([-0.5,2]);
%ylim([-1,1]);

subplot(4,2,5);
plot(z,2*q);%multiply amplitude by 2
title('2x(t)');
%xlim([-0.5,2]);
%ylim([-1,1]);

subplot(4,2,6);
plot(z,q+2); %add 2 to the amplitude
title('x(t)+2');
%xlim([-0.5,2]);
%ylim([-1,1]);

subplot(4,2,7);
plot(-z,q); %time reversal
title('x(-t)');
%xlim([-0.5,2]);
%ylim([-1,1]);

subplot(4,2,8);
plot(z,-q);%amplitude reversal
title('-x(t)');
%xlim([-0.5,2]);
%ylim([-1,1]);