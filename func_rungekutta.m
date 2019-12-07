function fun1=func_rungekutta(x0,y0,xf,n)
x=zeros(n+1,1);
y=zeros(n+1,1);
z=zeros(n+1,1);
h=(xf-x0)/n;
x(1)=x0;
y(1)=y0;
z(1)=y0;
for i=1:1:n
    x(i+1)=x(i)+h;
    v1=h*func_dydx(x(i),y(i));
    v2=h*func_dydx(x(i)+(h/2),y(i)+(v1/2));
    v3=h*func_dydx(x(i)+(h/2),y(i)+(v2/2));
    v4=h*func_dydx(x(i)+h,y(i)+v3);
    y(i+1)=y(i)+(1/6)*(v1+2*v2+2*v3+v4);
    z(i+1)=exp(x(i+1));
end
plot(x,y);
hold on;
plot(x,z);
fun1=y(n+1);