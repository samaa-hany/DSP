%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP , LAB2 , Question 1            %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear
clc;
%% H(z) Function

num=[1 1.655 1.655 1];
den=[ 1 -1.57 1.264 -0.4 ];

%% Ploting
figure;
zplane(num,den)

figure;
freqz(num,den)