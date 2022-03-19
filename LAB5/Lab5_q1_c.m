%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP , LAB5 , Question 1            %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear
clc;
%% 
N=100;
s=0:100;
x1=zeros(1,N);
h=zeros(1,N);

%% Calculate the Impulse Response of the system
x1(1)=1;
h(1)=0.0181*x1(1);
h(2)=1.76*h(1)+ 0.0543*x1(1);
h(3)=1.76*h(2)-1.1829*h(1)+0.0543*x1(1);
h(4)=1.76*h(3)-1.1829*h(2)+0.2781*h(1)+0.0181*x1(1);
for n=5:N
   
        h(n)= 1.76*h(n -1)-1.1829*h(n-2)+ 0.2781*h(n-3);%+0.0181*x1(n)+ 0.0543*x1(n-1)+ 0.0543*x1(n-2)+0.0181*x1(n-3);
end

%% Convolution between h & x
x= cos(0.2*pi*s);
y= conv(x,h);

%%Calculate the Poles & Zeros
dnum=[1 -1.76 1.1829 -0.2781];
num=[0.0181 0.0543 0.0543 0.0181];
Poles=roots(dnum);
Zeros=roots(num);

%% H(z) Function
%f=0:0.001:1;
w=0:0.001:pi;
H=( 0.0181+ 0.0543*exp(-1j*w)+ 0.0543*exp(-1j*w*2)+ 0.0181*exp(-1j*w*3))./( -1+ 1.76*exp(-1j*w*1)- 1.1829*exp(-1j*w*2)+ 0.278*exp(-1j*w*3));
L=length(H);

%% Ploting
figure;
subplot(2,1,1)
stem(abs(fft(h)))
title('FFT built in function')
subplot(2,1,2)
stem(angle(fft(h)))

figure;
subplot(2,1,1)
plot(abs(dft(h,N)))
title('DFT function')
subplot(2,1,2)
plot(angle(dft(h,N)))

figure;
subplot(2,1,1)
stem(abs(ifft(H)))
title('IFFT built in function')
subplot(2,1,2)
stem(angle(ifft(H)))

figure;
subplot(2,1,1)
plot(abs(Idft(H,L)))
title('IDFT function')
subplot(2,1,2)
plot(angle(Idft(H,L)))

