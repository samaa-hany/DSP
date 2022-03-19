%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP, LAB 1, Q4                     %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all
clear all
clc;

[Y,Fs]=audioread('D:\ITI_Labs\DSP\Lab4_q4.mp3');
sound(Y,Fs);

%% sampling
t = 0:1000/Fs:length(Y);
plot(t,Y);