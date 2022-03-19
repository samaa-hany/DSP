%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP, LAB 3, Q3                     %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear all;
clc;
rand('seed',0220);

%% Phase 1

[x_TD Fs] = audioread('audiocheck.net_sweep_100Hz_3999Hz_-5dBFS_10s.wav');
M=[4,8,16,32];

Ts = 1/Fs;
n = (1:length(x_TD))';
t = Ts*n;
x_FD = fft(x_TD);
dF = Fs/length(x_FD);
f = 0:dF:Fs-dF;
w = 2*pi*f*Ts;
W = 2*pi*f;



%% Ploting
figure
subplot(2,2,1)
plot(n,x_TD)
title('Time Domain vs n')
xlabel('n')
ylabel('x[n]')

subplot(2,2,3)
plot(t,x_TD)
title('Time Domain vs t')
xlabel('t')
ylabel('x(t)')

subplot(2,2,2)
plot(W,abs(x_FD))
title('Frequency Domain vs \Omega')
ylabel('X(\Omega)')
xlabel('\Omega(rad/sec)')

subplot(2,2,4)
plot(f,abs(x_FD))
title('Frequency Domain vs \omega')
ylabel('X(\omega)')
xlabel('\omega (rad)')


%% M = [4,8,16,32];
for i=1:length(M)
x_TD = downsample(x_TD,M(i));
Fs = Fs/M(i);
Ts = 1/Fs;
n = (1:length(x_TD))';
t = Ts*n;
x_FD = fft(x_TD);
dF = Fs/length(x_FD);
f = 0:dF:Fs-dF;
w = 2*pi*f*Ts;
W = 2*pi*f;
m=M(i);
figure
subplot(2,2,1)
plot(n,x_TD)
title(['Time Domain vs n,M=',num2str(m)])
ylabel('x[n]')
xlabel('n (samples)')

subplot(2,2,3)
plot(t,x_TD)
title(['Time Domain vs t,M=',num2str(m)])
ylabel('x(t)')
xlabel('t (sec)')

subplot(2,2,2)
plot(W,abs(x_FD))
title(['Frequency Domain vs \Omega,M=',num2str(m)])
xlabel('\Omega (rad/sec)')
ylabel('X(\Omega)')

subplot(2,2,4)
plot(f,abs(x_FD))
title(['Frequency Domain vs \omega,M=',num2str(m)])
xlabel('\omega (rad)')
ylabel('X(\omega)')
end
