%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP, LAB 3, Q3                     %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear all;
clc;
rand('seed',0220);

%% Phase 2

[x_TD,Fs]=audioread('audiocheck.net_sweep_100Hz_3999Hz_-5dBFS_10s.wav');
x_duration=2;
seq=20*10^(-3);
Samples_N=(length(x_TD)*seq/x_duration);
x_TD=x_TD(1:end-1);
N=90000;

h0=[0.5,0.5];       %% Low Pass Filter
h1=[0.5,-0.5];      %% High Pass Filter

V1=[];              %% Samples resulted by Low Pass Filter
V0=[];              %% Samples resulted by High Pass Filter

Counter=0;
for n=Samples_N:Samples_N:length(x_TD)
    x1=conv(h0,x_TD(n-(Samples_N):n));
    x2=conv(h1,x_TD(n-(Samples_N):n));
    
    v0=downsample(x1,2);
    v1=downsample(x2,2);
    
    Power_v0=(sum(v0.^2));
    Power_v1=(sum(v1.^2));
    
    if Power_v1 > (Power_v0 *10)
        v0(1:end)=0;
        Counter=Counter+1;
    elseif Power_v1 < (Power_v0 *10)
        v1(1:end)=0;
        Counter=Counter+1;
    end
    V0=[V0 ;v0];
    V1=[V1 ;v1];
end

%% phase 3

g0=[1 ,1];
g1=[-1 ,1];

R_V0=upsample(V0,2);
R_V1=upsample(V1,2);
y1 = conv(g0,R_V0);
y2 = conv(g1,R_V1);
Y=y1+y2;

figure
subplot(2,2,1)
plot(x_TD)
title('Time Domain of the Input')
xlabel('t (sec)')
ylabel('X(t)')

subplot(2,2,3)
plot(abs(dft(x_TD,N)))
title('Frequency Domain of the Input')
ylabel('X(\Omega)')
xlabel('\Omega (rad)')

subplot(2,2,2)
plot(Y)
title('Time Domain of the Output (Reconstructed signal)')
xlabel('t (sec)')
ylabel('X(t)')

subplot(2,2,4)
plot(abs(fft(Y)))
title('Frequency Domain of the Output (Reconstructed signal)')
ylabel('X(\Omega)')
xlabel('\Omega (rad)')

%% Phase 4
Counter*80/16000

sound(Y)