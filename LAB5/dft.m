function Xk = dft(xn,N)
%To compute the dft of the sequence x(n)
L = length(xn);
%Checking the DFT inputs
if(N<L)
    error('Length of DFT should be greater than the input sequence');
end

x_1 = [xn zeros(1,N-L)];

for n=0:1:N-1;
for k=0:1:N-1;
p = exp(2*pi*-1i*n*k/N);
x_2(k+1,n+1) = p;
end
end
Xk=x_1*x_2;

end

