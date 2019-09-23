clc;
clear all;
F1=1000;
F2=2000;
N=8;
fs=8000;
for i=0:N-1;
  x(i+1)=sin(2*pi*(F1/fs)*i) + 0.5*sin(2*pi*(F2/fs)*i + 3*pi/4);
end;
disp('After sampling');
disp(x);
X=zeros(1,8);
for m=0:N-1;
  for n=0:N-1;
    X(m+1)=X(m+1)+x(n+1)*exp(-j*2*pi*n*m/N);
  endfor
endfor
disp(X);

t=0:N-1;
q=abs(X);
subplot(411);
stem(t,q);
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response');

p=angle(X);
subplot(412);
stem(t,p);
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - phase');

subplot(413);
stem(t,x);
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - signal');
y=zeros(1,8);

for m=0:N-1;
  for n=0:N-1;
    y(m+1)=y(m+1)+X(n+1)*exp(j*2*pi*n*m/N);
  endfor
endfor

for j=0:N-1;
  y(j+1)=(1/N)*(y(j+1));  
endfor
%disp(y);

subplot(414);
stem(t,y);
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain -retrive signal');