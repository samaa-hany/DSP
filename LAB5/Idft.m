function Xk = Idft(xn,N)
%To compute the Idft of the sequence x(n)
L = length(xn);
%Checking the IDFT inputs
if(N<L)
    error('Length of IDFT should be greater than the input sequence');
end
x_1 = [xn zeros(1,N-L)]; 

for n=0:1:N-1;
for k=0:1:N-1;
p = exp(2*pi*-1i*n*k/N);
x_2(k+1,n+1) = p;
end
end
w=exp(-1i*2*pi/N);
n=0:(N-1);
k=0:(N-1);
nk=n'*k;
W=w.^(-nk);
Xk=(xn*W)/N;

end

