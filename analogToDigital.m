clc;
clear;
%answer 1
fs=2000; %number of frequency in 1 second
ts=1/fs; 
N=8; %Number of data point in digital signal
n=0:N-1;
x=5*sin(2*pi*1000*n*ts+pi/2);
subplot(4,2,1)
stem(n,x);