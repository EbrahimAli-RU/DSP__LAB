clc;
clear;
N=4;
n=0:N-1;
x1=[1 2 2 1]
X1 = zeros(1,N);
y = zeros(1,N);
for m = 1:N
    for n = 1:N
        X1(m) = X1(m) + x1(n)*exp(-2j*pi*(n-1)*(m-1)/N);
    end
end
X1
for m=0:N-1;
  for n=0:N-1;
    y(m+1)=y(m+1)+X1(n+1)*exp(j*2*pi*(n)*(m)/N);
  endfor
endfor
for j=0:N-1;
  y(j+1)=(1/N)*(y(j+1));  
endfor
y