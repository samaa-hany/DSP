%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP, LAB 1, Q2                     %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rand('seed',202);

n2=-10:10;

%% Generate X[n]
x2=exp(-(0.1+1i*0.3)*n2);
I=real(x2);
Q=imag(x2);
A=abs(x2);
P=angle(x2)*180/pi;

%% Ploting
subplot(2,2,1)
stem(n2,A)
title('Amplitude')
subplot(2,2,2)
stem(n2,P)
title('Phase')
subplot(2,2,3)
stem(n2,I)
title('Real Part')
subplot(2,2,4)
stem(n2,Q)
title('Imag Part')