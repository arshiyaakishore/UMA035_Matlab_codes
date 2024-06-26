%simpson
clc;
clear all;
f=@(x)(cos(x))^2;
n=4;
a=-0.25;
b=0.25;
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+h*i;
    if rem(i,2) == 0
        sum = sum+2*f(x);
    else
        sum = sum+4*f(x);
    end
end
sum = sum+f(a)+f(b);
ans = sum*(h/3);
ans