%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP, LAB 3, Q1                     %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear all;
clc;
rand('seed',0220);

N=5;
Wc=1/ 4;
%% Butterworth digital and analog filter design
[num_b,dnum_b]=butter(N,Wc);
%% Chebyshev Type I digital and analog filter design
[num_C1,dnum_C1]= cheby1(N,0.5,Wc);
%% Chebyshev Type II digital and analog filter design
[num_C2,dnum_C2]= cheby2(N,20,Wc);
%% Elliptic digital and analog filter design
[num_e,dnum_e]=ellip(N,0.5,20,Wc);

%% Ploting
figure
subplot(2,2,1)
zplane(num_b,dnum_b)
title('Zeros and Poles by Butterworth filter ')
subplot(2,2,2)
zplane(num_C1,dnum_C1)
title('Zeros and Poles by Chebyshev Type I filter ')
subplot(2,2,3)
zplane(num_C2,dnum_C2)
title('Zeros and Poles by Chebyshev Type II filter ')
subplot(2,2,4)
zplane(num_e,dnum_e)
title('Zeros and Poles by Elliptic filter ')


figure
freqz(num_b,dnum_b)
title('The frequency response of Butterworth(amplitude & Phase)')

figure
freqz(num_C1,dnum_C1)
title('The frequency response of Chebyshev Type I(amplitude & Phase)')

figure
freqz(num_C2,dnum_C2)
title('The frequency response of Chebyshev Type II(amplitude & Phase)')

figure
freqz(num_e,dnum_e)
title('The frequency response of Elliptic(amplitude & Phase)')

h_b=dimpulse(num_b,dnum_b);
h_C1=dimpulse(num_C1,dnum_C1);
h_C2=dimpulse(num_C2,dnum_C2);
h_e=dimpulse(num_e,dnum_e);

figure
subplot(2,2,1)
stem(0:length(h_b)-1,h_b)
title('Unit pulse response of Butterworth filter ')
subplot(2,2,2)
stem(0:length(h_C1)-1,h_C1)
title('Unit pulse response of Chebyshev Type I filter ')
subplot(2,2,3)
stem(0:length(h_C2)-1,h_C2)
title('Unit pulse response of Chebyshev Type II filter ')
subplot(2,2,4)
stem(0:length(h_e)-1,h_e)
title('Unit pulse response of Elliptic filter ')

x=randn(1000,1);
X=fft(x);
y=filter(num_C1,dnum_C1,x);
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

