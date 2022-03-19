%% LAB 4
clc;
clear all;
close all;

%% phase 1

[x_time Fs] = audioread('audiocheck.net_sweep_100Hz_3999Hz_-5dBFS_10s.wav');
%soundsc(x_time,Fs);


Ts = 1/Fs;
n = (1:length(x_time))';
t = Ts*n;

x_freq = fft(x_time);


dF = Fs/length(x_freq);
f = 0:dF:Fs-dF;
w = 2*pi*f*Ts;

W = 2*pi*f;



figure('name','Time Domain')
subplot(2,1,1)
plot(n,x_time)
ylabel('x(t)')
xlabel('n (samples)')

subplot(2,1,2)
plot(t,x_time)
ylabel('x(t)')
xlabel('t (seconds)')

figure('name','Frequency Domain')
subplot(2,1,1)
plot(W,abs(x_freq))
ylabel('X(f)')
xlabel('\Omega (rad/sec)')

subplot(2,1,2)
plot(f,abs(x_freq))
ylabel('X(f)')
xlabel('\omega (rad/sec)')

%% M = 4 
M = 4;
x_time = downsample(x_time,M);

Fs = Fs/M;

Ts = 1/Fs;
n = (1:length(x_time))';
t = Ts*n;

x_freq = fft(x_time);


dF = Fs/length(x_freq);
f = 0:dF:Fs-dF;
w = 2*pi*f*Ts;

W = 2*pi*f;



figure('name','Time Domain, M = 4')
subplot(2,1,1)
plot(n,x_time)
ylabel('x(t)')
xlabel('n (samples)')

subplot(2,1,2)
plot(t,x_time)
ylabel('x(t)')
xlabel('t (seconds)')

figure('name','Frequency Domain, M = 4')
subplot(2,1,1)
plot(W,abs(x_freq))
ylabel('X(f)')
xlabel('\Omega (rad/sec)')

subplot(2,1,2)
plot(f,abs(x_freq))
ylabel('X(f)')
xlabel('\omega (rad/sec)')



%% M = 8 
M = 8;
x_time = downsample(x_time,M);

Fs = Fs/M;

Ts = 1/Fs;
n = (1:length(x_time))';
t = Ts*n;

x_freq = fft(x_time);


dF = Fs/length(x_freq);
f = 0:dF:Fs-dF;
w = 2*pi*f*Ts;

W = 2*pi*f;



figure('name','Time Domain, M = 8')
subplot(2,1,1)
plot(n,x_time)
ylabel('x(t)')
xlabel('n (samples)')

subplot(2,1,2)
plot(t,x_time)
ylabel('x(t)')
xlabel('t (seconds)')

figure('name','Frequency Domain, M = 8')
subplot(2,1,1)
plot(W,abs(x_freq))
ylabel('X(f)')
xlabel('\Omega (rad/sec)')

subplot(2,1,2)
plot(f,abs(x_freq))
ylabel('X(f)')
xlabel('\omega (rad/sec)')



%% M = 16
M = 16;
x_time = downsample(x_time,M);

Fs = Fs/M;

Ts = 1/Fs;
n = (1:length(x_time))';
t = Ts*n;

x_freq = fft(x_time);


dF = Fs/length(x_freq);
f = 0:dF:Fs-dF;
w = 2*pi*f*Ts;

W = 2*pi*f;



figure('name','Time Domain, M = 16')
subplot(2,1,1)
plot(n,x_time)
ylabel('x(t)')
xlabel('n (samples)')

subplot(2,1,2)
plot(t,x_time)
ylabel('x(t)')
xlabel('t (seconds)')

figure('name','Frequency Domain, M = 16')
subplot(2,1,1)
plot(W,abs(x_freq))
ylabel('X(f)')
xlabel('\Omega (rad/sec)')

subplot(2,1,2)
plot(f,abs(x_freq))
ylabel('X(f)')
xlabel('\omega (rad/sec)')



%% M = 32
M = 32;
x_time = downsample(x_time,M);

Fs = Fs/M;

Ts = 1/Fs;
n = (1:length(x_time))';
t = Ts*n;

x_freq = fft(x_time);


dF = Fs/length(x_freq);
f = 0:dF:Fs-dF;
w = 2*pi*f*Ts;

W = 2*pi*f;



figure('name','Time Domain, M = 32')
subplot(2,1,1)
plot(n,x_time)
ylabel('x(t)')
xlabel('n (samples)')

subplot(2,1,2)
plot(t,x_time)
ylabel('x(t)')
xlabel('t (seconds)')

figure('name','Frequency Domain, M = 32')
subplot(2,1,1)
plot(W,abs(x_freq))
ylabel('X(f)')
xlabel('\Omega (rad/sec)')

subplot(2,1,2)
plot(f,abs(x_freq))
ylabel('X(f)')
xlabel('\omega (rad/sec)')