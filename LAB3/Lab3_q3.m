%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP, LAB 3, Q3                     %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear all;
clc;
rand('seed',0220);

[X, Fs]=audioread('audiocheck.net_dtmf_01014705876.wav');


Digits =[];
for i=1:1600:length(X)
[pxx,f] = pwelch(X(i:1600+i-1),[],[],[],Fs);
plot(f,10*log10(pxx));
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
[pxx1,index] = max(pxx);
F(1,1) = f(index);
pxx(index) = -inf;
[pxx,index1]=max(pxx);
F(2,1) = f(index1);
digit = READ_Digit(F)
Digits=[Digits digit];
end
