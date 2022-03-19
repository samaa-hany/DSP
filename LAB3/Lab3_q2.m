%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP, LAB 3, Q2                     %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear all;
clc;
rand('seed',0220);

N=10;

m = [0 0 1 1 0 0 1 1 0 0];
f = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 1];
[num,dnum]=yulewalk(N,f,m);

%% Ploting
figure
zplane(num,dnum)
title('Zeros and Poles ')

figure
freqz(num,dnum)
title('The frequency response (amplitude & Phase)')

figure
h=dimpulse(num,dnum);
stem(0:length(h)-1,h)
title('Unit pulse response')

%% Random signal
x=randn(100,1);
X=fft(x);
y=filter(num,dnum,x);
Y=fft(y);


figure
subplot(2,2,1)
stem(x)
title('The random input signal')
subplot(2,2,2)
stem(abs(X))
title('FFT of the input signal')
subplot(2,2,3)
stem(y)
title('The output signal after the filter')
subplot(2,2,4)
stem(abs(Y))
title('FFT of the output signal')
