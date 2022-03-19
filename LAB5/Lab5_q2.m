%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP , LAB5 , Question 2            %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear
clc;
%% For 4-point sequence
x = [1 1 1 1 zeros(1,508)];
W = 0:(2*pi)/512:2*pi-(2.*pi)/512 ;
N=512;
n=0:511 ;
for e=1:512
dtft_x(e)=sum(x.*exp(-1i*W(e).*n));
end
%% Ploting DTFT & DFT for 4-point sequence
figure
subplot(3,1,1)
plot(W,abs(dtft_x));
title('DTFT & DFT X(e^j^\omega) of 4-point sequence')
ylabel('Amplitude X(e^j^\omega)')
xlabel('\omega (rad)')
subplot(3,1,2)
plot(W,angle(dtft_x));
ylabel('Phase X(e^j^\omega)')
xlabel('\omega (rad)')
subplot(3,1,3)
plot(abs(dft(x,N)));
ylabel('Amplitude X(e^j^\omega)')
xlabel('\omega (rad)')

%% For 8-point sequence
x = [1 1 1 1 1 1 1 1 zeros(1,504)];
W = 0:(2*pi)/512:2*pi-(2.*pi)/512 ;
N=512;
n=0:511 ;
for e=1:512
dtft_x(e)=sum(x.*exp(-1i*W(e).*n));
end
%% Ploting DTFT & DFT for 8-point sequence
figure
subplot(3,1,1)
plot(W,abs(dtft_x));
title('DTFT & DFT X(e^j^\omega) of 8-point sequence')
ylabel('Amplitude X(e^j^\omega)')
xlabel('\omega (rad)')
subplot(3,1,2)
plot(W,angle(dtft_x));
ylabel('Phase X(e^j^\omega)')
xlabel('\omega (rad)')
subplot(3,1,3)
plot(abs(dft(x,N)));
ylabel('Amplitude X(e^j^\omega)')
xlabel('\omega (rad)')

%% For 16-point sequence
x = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 zeros(1,496)];
W = 0:(2*pi)/512:2*pi-(2.*pi)/512 ;
N=512;
n=0:511 ;
for e=1:512
dtft_x(e)=sum(x.*exp(-1i*W(e).*n));
end
%% Ploting DTFT & DFT for 16-point sequence
figure
subplot(3,1,1)
plot(W,abs(dtft_x));
title('DTFT & DFT X(e^j^\omega) of 16-point sequence.')
ylabel('Amplitude X(e^j^\omega)')
xlabel('\omega (rad)')
subplot(3,1,2)
plot(W,angle(dtft_x));
ylabel('Phase X(e^j^\omega)')
xlabel('\omega (rad)')
subplot(3,1,3)
plot(abs(dft(x,N)));
ylabel('Amplitude X(e^j^\omega)')
xlabel('\omega (rad)')