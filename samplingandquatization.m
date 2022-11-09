clc;
clear all;
close all;
a1 = 10;
a2 = 20;
a3 = 40;

f1 = 4;
f2 = 8;
f3 = 16;

n = 1000;

t = 0:1/n:1;

x = a1*sin(2*pi*f1*t) + a2*sin(2*pi*f2*t) + a3*sin(2*pi*f3*t);
subplot(2,1,1);
plot(t,x,'red');
hold on;

fos = 40;
tos = 0:1/fos:1;
x1 = a1*sin(2*pi*f1*tos) + a2*sin(2*pi*f2*tos) + a3*sin(2*pi*f3*tos);
subplot(2,1,1);
plot(tos,x1,'green');

fus = 20;%allising happend
tus = 0:1/fus:1;
x1 = a1*sin(2*pi*f1*tus) + a2*sin(2*pi*f2*tus) + a3*sin(2*pi*f3*tus);
subplot(2,1,1);
plot(tus,x1,'blue');


signal1 = x;
nbit = 2;
level = 2.^nbit;
mn = min(a1,min(a2,a3));
mx = max(a1,max(a2,a3));
scallingfac = (mx-mn)/(level);
signal1=signal1/scallingfac;
signal1 = round(signal1);
signal1 = signal1*scallingfac;
subplot(2,1,2)
plot(t,signal1,'r');
hold on;

signal1 = signal1 - x;
subplot(2,1,2)
plot(t,signal1,'g');
hold on;


