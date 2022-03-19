%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP, LAB 1, Q5                     %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear all;
clc;

n=0:11;

x=4*cos(pi*n / 8);

y=[1 1 zeros(1,8)];

for i=3:12
    y(i) = y(i-1)+ 2*y(i-2)+ x(i-2);
end

stem(n,y)
title('The Response of the system');
ylabel('Y[n]');
xlabel('n');

