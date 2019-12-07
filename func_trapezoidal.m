function fun1=func_trapezoidal(a,b,n)
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
for i=1:1:n
    sum=sum+y(i)+y(i+1);               %solution = h/2*(f(a)+f(b)+2*(y2+y3+....yn))%
end
solution=(h/2)*(sum);
fun1=solution;
    
