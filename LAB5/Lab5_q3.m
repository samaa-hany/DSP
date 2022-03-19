% %%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
% %%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
% %%  DSP , LAB5 , Question 3            %%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear
clc;
%% Compute x[n]
n=0:10;
xn=cos(0.48*pi*n)+ cos(0.52*pi*n);
N=length(xn);
Xk = dft( xn ,N );
Xn = Idft( Xk ,N );

%% Ploting DFT & IDFT of x[n] 
figure;
subplot(3 ,1 ,1);
plot(n ,xn)
title('x[n]')
ylabel('x[n]')
xlabel('n (samples)')
subplot(3 ,1 ,2);
plot(n ,Xk)
title('DFT of x[n]')
ylabel('X[k]')
xlabel('k')
subplot(3 ,1 ,3);
plot(n ,Xn)
title('IDFT of X[k]')
ylabel('x[n]')
xlabel('n (samples)')


%% Padding the sequence with 90 zeros
z=zeros(1,90);
xn=[xn z];
N=length(xn);
Xk = dft( xn ,N );
Xn = Idft( Xk ,N );
n=0:length(xn)-1;

%% Ploting DFT & IDFT of x[n] after padding
figure;
subplot(3 ,1 ,1);
stem(n ,xn)
title('x[n] After Padding')
ylabel('x[n]')
xlabel('n (samples)')
subplot(3 ,1 ,2);
plot(n ,Xk)
title('DFT of x[n]')
ylabel('X[k]')
xlabel('k')
subplot(3 ,1 ,3);
stem(n ,Xn)
title('IDFT of X[k]')
ylabel('x[n]')
xlabel('n (samples)')

%% Comparing the two spectrum outputs in parts (b),(c)
%% Compute x[n]
xn=cos(0.48*pi*n)+ cos(0.52*pi*n);
N=length(xn);
Xk = dft( xn ,N );
Xn = Idft( Xk ,N );
n=0:length(xn)-1;

%% Ploting DFT & IDFT of x[n] 
figure;
subplot(3 ,1 ,1);
stem(n ,xn)
title('x[n] Final form')
ylabel('x[n]')
xlabel('n (samples)')
subplot(3 ,1 ,2);
stem(n ,Xk)
title('DFT of x[n]')
ylabel('X[k]')
xlabel('k')
subplot(3 ,1 ,3);
stem(n ,Xn)
title('IDFT of X[k]')
ylabel('x[n]')
xlabel('n (samples)')

