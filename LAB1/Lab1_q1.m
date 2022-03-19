%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP, LAB 1,                        %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rand('seed',202);
n1=-20:20;
n2=-10:10;

%% Generate X[n]
x1=sin(n1*(pi/4));
x=sin((n1-5)*(pi/4));

%% Ploting
subplot(2,1,1)
stem(n1,x1)
title('Signal X[n]')
subplot(2,1,2)
stem(n1,x)
title('Shifted Signal X[n-5]')