%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP , LAB2 , Question 3            %%%%%%%%%%%%%%%%%
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

%The system is stable and causal?
%% H(z) Function
% w=0:0.01:2*pi;
% for k=1:length(w)
%    
%         H(k)= (0.0181+ 0.0543*exp(-1i*w)+ 0.0543*exp(-2*1i*w)+0.0181*exp(-3*1i*w))./(1.76*exp(-1i*w)-1.1829*exp(-2*1i*w)+ 0.2781*exp(-3*1i*w));
% end
%% Ploting
figure;
stem(h)
title('The Impulse Response of the system');
ylabel('h[n]');
xlabel('n');

figure;
stem(y)
title('Convolution between h & x');
ylabel('y[n]');
xlabel('n');

figure;
zplane(num,dnum)

figure;
viscircles([0 0],1)
hold on
plot(real(Zeros),imag(Zeros),'ko')
hold on
plot(real(Poles),imag(Poles),'mx')
grid;
axis([-1 1 -1 1])

figure;
subplot(2,1,1)
stem(abs(fft(h)))
subplot(2,1,2)
stem(angle(fft(h)))

figure;
freqz(num,dnum)

