function fun1=func_newton_backward(xf)
n=input('\n N : ');
x=zeros(n,1);
y=zeros(n,1);
yd=zeros(n,n-1);
for i=1:1:n
    x(i)=input('\n x : ');
    y(i)=input('\n y : ');
end
h=x(2)-x(1);
u=(xf-x(n))/h;
for i=n:-1:2
    yd(i)=y(i)-y(i-1);
end
for j=2:1:n-1
    for i=n:-1:i+1
        yd(i,j)=yd(i,j-1)-yd(i-1,j-1);
    end
end
fprintf('x \t\t y \t\t ');
for j=1:1:n-1
    fprintf('yd%d \t\t',j);
end
for i=1:1:n
    fprintf('\n%5.2f \t%5.2f \t ',x(i),y(i));
    for j=1:1:n-1
        if i>j
            fprintf('%5.2f \t',yd(i,j));
        end
    end
end
sum=y(n);
for i=1:1:n-1
    multiplier=1;
    for j=0:1:i-1
        multiplier=multiplier*(u+j);
    end
    sum=sum+((multiplier*yd(n,i))/(factorial(i)));
end
fun1=sum;