function fun1=func_simpson(a,b,n)
if mod(n,2)~=0
    n=n+1;
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
for i=1:2:n
    sum=sum+(y(i)+4*y(i+1)+y(i+2));               %solution = h/3*(f(a)+f(b)+4*(y2+y4+....)+2*(y3+y5+...))%
end
solution=(h/3)*(sum);
fun1=solution;
    
