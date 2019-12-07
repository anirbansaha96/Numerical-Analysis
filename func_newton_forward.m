function fun1=func_newton_forward(xf)
n=input('\n N : ');
x=zeros(n,1);
y=zeros(n,1);
yd=zeros(n,n-1);
for i=1:1:n
    x(i)=input('\n x : ');    
    y(i)=input('\n y : ');
end

h=x(2)-x(1);
u=(xf-x(1))/h;
for i=1:1:n-1
    yd(i,1)=y(i+1)-y(i);
end
for j=2:1:n-1
    for i=1:1:n-j
        yd(i,j)=yd(i+1,j-1)-yd(i,j-1);
    end
end

fprintf('\n x \t\t y \t\t');
for i=1:1:n-1
    fprintf('yd[%d] \t\t',i);
end
for i=1:1:n
    fprintf('\n%f \t %f \t',x(i),y(i));
    for j=1:1:n-i
        fprintf('%f \t',yd(i,j));
    end
end
sum=y(1);
for i=1:1:n-1
    multiplier=1;
    for j=0:1:i-1
        multiplier=multiplier*(u-j);
    end
    sum=sum+((yd(1,i)*multiplier)/factorial(i));
end
fun1=sum;