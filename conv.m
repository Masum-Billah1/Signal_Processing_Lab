clc;
clear all;
close all;
x = [1 2 3 1];
h = [1 2 1 -1];
xl = length(x);
hl = length(h);

for i = 1:xl+hl-1;
    y(i)=0;
end

for i = 1:xl
    for j = 1:hl
        y(i+j-1)=y(i+j-1)+x(i)*h(j);
    end
end
lagval = ((xl-1)+(hl-1))/2
lag = -lagval:lagval;
stem(lag,y)
