N=10;
f=1/N;
n = 0:.5:N-1;
a =3;
x =a*cos(2*pi*n*f+20);
stem(n,x);
