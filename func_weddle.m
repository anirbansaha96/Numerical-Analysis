function fun1=func_weddle(a,b,n)
if mod(n,6)~=0
    n=n+(6-mod(n,6));
end
x=zeros(n+1,1);
y=zeros(n+1,1);
x(1)=a;
x(n+1)=b;
h=(b-a)/n;
for i=2:1:n
    x(i)=x(1)+(i-1)*h;
end
for i=1:1:n+1
    y(i)=func_tan_int(x(i));
end
sum=0;
for i=1:6:n
    sum=sum+(y(i)+5*y(i+1)+y(i+2)+6*y(i+3)+y(i+4)+5*y(i+5)+y(i+6));               
end
solution=(3*h/10)*(sum);
fun1=solution;
    
