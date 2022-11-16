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
plot(t,x,'r');
hold on;

fos = 40;
tos = 0:1/fos:1;
x1 = a1*sin(2*pi*f1*tos) + a2*sin(2*pi*f2*tos) + a3*sin(2*pi*f3*tos);;
subplot(2,1,1);
plot(tos,x1,'b');
hold on;


fus = 10;
tus = 0:1/fus:1;
x2 = a1*sin(2*pi*f1*tus) + a2*sin(2*pi*f2*tus) + a3*sin(2*pi*f2*tus);
subplot(2,1,1);
plot(tus,x2,'g');

signal = x;
n = 2;
level = 2.^n;
mx = max(a1,max(a2,a3));
mn = min(a1,min(a2,a3));
scaling_fac = (mx-mn)/level;
signal = signal/scaling_fac;
signal = round(signal);
signal = signal*scaling_fac;
subplot(2,1,2);
plot(t,signal,'r');
hold on;

error = signal-x;
subplot(2,1,2);
plot(t,error,'g');
