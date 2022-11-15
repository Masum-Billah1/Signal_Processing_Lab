clc;
clear all;
close all;
input = zeros(1,20);
input = [input,ones(1,10)];

y_coff = [1];
x_coff = [1/6 -1/6 1/6 -1/6 1/6 -1/6];
y = differenceequation(x_coff,y_coff,input);
yy = filter(x_coff,y_coff,input);
subplot(2,1,1)
stem(y);
title('My Filter');
subplot(2,1,2)
stem(yy)
title('build in filter')