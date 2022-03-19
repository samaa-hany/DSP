%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP, LAB 3, Q3                     %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear all;
clc;
rand('seed',0220);
Fs=8000;
[w, F]=audioread('audiocheck.net_sweep_100Hz_3999Hz_-5dBFS_10s.wav');
[pxx,f] = pwelch(w,[],[],[],F);

W=fft(w);
h0=cos(2*pi*W).*exp(-1i*W/2);
h1=sin(2*pi*W).*exp(-1i*W/2);
y0=W.*h0;
y1=W.*h1;

subplot(2,1,1)
% plot(f,10*log10(pxx));
plot(w)
xlabel('t');
ylabel('Power');
subplot(2,1,2)
stem(w)
xlabel('n');
ylabel('Power');

W=fft(w);
h0=cos(2*pi*W).*exp(-1i*W/2);
h1=sin(2*pi*W).*exp(-1i*W/2);
y0=W.*h0;
y1=W.*h1;

y=y0+y1;
Y=fft(y);

figure
plot(abs(Y))

figure
subplot(2,1,1)
stem(y0)
subplot(2,1,2)
stem(y1)


soundsc(w);
