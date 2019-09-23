F = 1000; F1 = 2000; F3 = 3000;
Fs = 8000; %sampling rate
dt = 1/Fs; %sampling time
n = 7; %number of dft point or sample number
t = 0:dt:n*dt; %total time
signal = sin(2*pi*F*t) + 0.5*sin(2*pi*F1*t + (3*pi)/4) + cos(2*pi*F3*t); 

subplot(211);
stem(t,signal);

N = length(t);

n = 0:N-1;

w = zeros(1,N);

for i=0:N-1
  w(i+1) = 0.5 - 0.5*cos(2*pi*(i)/N);
end

%disp(length(signal));
%disp(length(w));
%disp(length(t));
ws = signal.*w;
disp(ws);

subplot(212);
stem(t,ws);