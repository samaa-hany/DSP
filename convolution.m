function [ Y ] = convolution( x,h )
%%  Samaa Hany Seif Elyazal            %%%%%%%%%%%%%%%%%
%%  Wireless Communication, Intake 42  %%%%%%%%%%%%%%%%%
%%  DSP, LAB 1, Q3   Conv function     %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lx=length(x);
lh=length(h);
X=[x,zeros(1,lh)]; 
H=[h,zeros(1,lx)];
ly=lx+lh-1;

for i=1:ly
Y(i)=0;
    for j=1:lx
        k=i-j+1;
        if(k>0)
        Y(i)=Y(i)+X(j)*H(k);
        else
        end
    end
end
subplot(2,1,1)
stem(Y);
ylabel('Y[n]');
xlabel('n');
title('Convolution of Two Signals without conv function');
subplot(2,1,2)
stem(conv(x,h));
ylabel('Y[n]');
xlabel('n');
title('Convolution of Two Signals with conv function');

end

