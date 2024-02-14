clc;clear all;
%%%Euler Method%%%
f=@(x,y) x.*y;
x0=0;y0=1;
xn=1;N=10;
h=(xn-x0)/N;
x=x0:h:xn;
y=zeros(1,N+1);
y(1)=y0;
for i=1:N
    y(i+1)=y(i)+h*(f(x(i),y(i)));
end
plot(x,y)
hold on;
exacty=exp((x.^2)/2);
plot(x,exacty,'--')