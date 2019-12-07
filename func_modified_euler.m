function fun1=func_modified_euler(x0,y0,xf,n)
x=zeros(n+1,1);
y=zeros(n+1,100);
z=zeros(n+1,1);
yf=zeros(n+1,1);
x(1)=x0;
y(1)=y0;
yf(1)=y0;
z(1)=y0;
h=(xf-x0)/n;
for i=1:1:n
    x(i+1)=x(i)+h;
    y(i+1,1)=y(i,1)+h*func_dydx(x(i),y(i));
    for j=2:1:100
        y(i+1,j+1)=y(i,1)+(h/2)*(func_dydx(x(i),y(i))+func_dydx(x(i+1),y(i+1,j)));
        if abs(y(i+1,j+1)-y(i+1,j))<0.01
            break
        end
    end
    y(i+1,1)=y(i+1,j+1);
    yf(i+1,1)=y(i+1,1);
    z(i+1)=exp(x(i+1));
end
plot(x,yf);
hold on;
plot(x,z);
fun1=y(n+1);
end