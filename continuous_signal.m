%Continuous Signal
T=20;
F=1/T;
t=0:F:4*T;
a=3;
x =a*cos(2*pi*F*t);
subplot(2,1,1);plot(t,x);
%Discret Signal
N=10;
f=1/N;
n = 0:.5:N-1;
a =3;
x =a*cos(2*pi*n*f+20);
subplot(2,1,2);stem(n,x);
