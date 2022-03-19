%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP , LAB2 , Question 2            %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear
clc;
%% Generate a Gaussian Random Noise IID
N=100000;
x=randn(N,1);
t=1:N;

%% Transfer Function polynomials
denum = [1 -0.99 0.9801];
num = [1 -0.1 0.56];
X=fft(x);
y=filter(num,denum,x);
Y=fft(y);
Q=abs(X);
Fs=44100;

%% Impulse Response 
h=[1 -0.99 0.9801 zeros(1,N-3)];
for i=4:N
    if i==4
    h(i) = 0.99*h(i-1)- 0.9801*h(i-2)+ 1;
    else
    h(i) = 0.99*h(i-1)- 0.9801*h(i-2);
    end
end

%% Sound
sound(x,Fs);

%% Ploting
figure;
subplot(2,2,1)
histogram(x)
title('Gaussian Random Noise')

subplot(2,2,2)
plot(abs(X))
title('FFT of Gaussian Random Noise')

subplot(2,2,3)
plot(y)
title('The Output of Filter ')

subplot(2,2,4)
plot(t,abs(Y))
title('FFT of The Output of Filter')

figure;
zplane(num,denum)
title('Poles and Zeros of the signal')

figure;
freqz(num,denum)

figure;
subplot(2,1,1)
stem(h(1:1000))
title('The impulse response');
ylabel('h[n]');
xlabel('n');

subplot(2,1,2)
stem(abs(fft(h)))
title('FFT of The impulse response');
ylabel('h[n]');
xlabel('f');

