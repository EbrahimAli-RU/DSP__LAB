clc;
clear all;
close all;
clc;
F1=1000;
F2=2000;
N=8;
fs=8000;
for i=0:N-1
  x(i+1)=sin(2*pi*(F1/fs)*i) + 0.5*sin(2*pi*(F2/fs)*i + 3*pi/4);
end;
disp(x);
X=zeros(1,8);

for m=0:N-1;
  real=0;
  ima=0;
  for n=0:N-1;
    real=real+(x(n+1)*cos(2*pi*m*n/N));
    ima=ima+(x(n+1)*sin(2*pi*m*n/N));
  endfor
  result1(m+1)=real;
  result2(m+1)=-ima;
endfor

for i=1:N
  X(i)=sqrt((result1(i)*result1(i))+(result2(i)*result2(i)));
endfor
disp('X');
disp(X);

t=0:N-1;
subplot(321)
stem(t,result1)
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - real response') 


subplot(322)
stem(t,result2)
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - ima response') 

subplot(323)
stem(t,X)
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response') 

y=zeros(1,8);
for i=1:N
  y(i)=atan(result2(i)/result1(i));
endfor

subplot(324)
stem(t,y);
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase response')

A=zeros(8,1);
for k = 0:N-1
    for n = 0:N-1
        A(k+1) = A(k+1) + X(n+1)*exp(j*2*pi*n*k/N);
    end
end
for j=0:N-1
  A(j+1)= (1/N)*A(j+1);
end;
disp(A);

subplot(325)
stem(t,x);
xlabel('Frequency');
ylabel('x(k)');
title('Frequency domain - sinnal response')

subplot(326)
stem(t,A);
xlabel('Frequency');
ylabel('x(k)');
title('Frequency domain - retrive signal response')