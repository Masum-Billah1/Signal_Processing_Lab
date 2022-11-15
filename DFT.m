clc;
clear all;
close all;

fs=8000;
ts=1/fs;
N=8;
n=0:N-1;
x=sin(2*pi*1000*n*ts) + 0.5*sin(2*pi*2000*n*ts + 3*pi/4);
figure(1)
subplot(1,2,1);
stem(n,x);
title('Main input');
%x = [1 2 3 4 5 6 7 8]
X = zeros(1,N);
for m = 1:N
    for n = 1:N
        X(m) = X(m) + x(n)*exp(-2*j*pi*(n-1)*(m-1)/N);
    end
end
n = 0:N-1;
rX = real(X);
iX = imag(X);
figure(2);
subplot(3,2,1);
stem(n,rX);
title('real part of DFT');
subplot(3,2,2);
stem(n,iX);
title('imaginary part of DFT');
subplot(3,2,3);
stem(n,iX);
title('imaginary part of DFT');
subplot(3,2,4);
stem(n,abs(X));
title('Magnitude');
y = abs(X).^2;
subplot(3,2,5)
stem(n,y);
title('Power spectrum');

ln=length(X);
x=zeros(1,ln);

for i=1:ln
    for n=1:ln
        x(i)=x(i)+(X(n)*exp(2*pi*j*(i-1)*(n-1)/ln));
    end
    x(i)=(1/ln)*x(i);
end
n=0:N-1;
rx = real(x);
figure(1);
subplot(1,2,2);
stem(n,rx);
title('real part of Inverse DFT');
