clear all;
close all;
clc;

x = [2 1 -1 3]
h = [1 0 1 1]
h = flip(h);

xt = -3:0;
ht = -1:2;
temp = x.'.*h;
y = zeros(1,length(x)+length(h)-1);
begt = xt(1)+ht(1);
endt = xt(length(x)) + ht(length(h));
t = [begt:endt];
disp(t);
for i = 1:length(h)
    for j = 1:length(x)
        y(i+j-1) = y(i+j-1) + temp(i,j);
    end
end
stem(t,y); 