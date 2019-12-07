function fun1=func_newton_divided(xf)
n=input('\n N : ');
x=zeros(n,1);
y=zeros(n,1);
yd=zeros(n,n-1);
for i=1:1:n
    x(i)=input('\n x : ');
    y(i)=input('\n y : ');
end
for i=1:1:n-1
    yd(i,1)=(y(i+1)-y(i))/(x(i+1)-x(i));
end
for j=2:1:n-1
    for i=1:1:n-j
        yd(i,j)=(yd(i+1,j-1)-yd(i,j-1))/(x(i+j)-x(i));
    end
end
fprintf('\nx \t\t\t y \t\t\t');
for j=1:1:n-1
    fprintf('f[x1');
    for i=2:1:j+1
        fprintf(',x%d',i);
    end
    fprintf(']\t\t\t');
end
for i=1:1:n
    fprintf('\n%6.4f \t %6.4f\t',x(i),y(i));
    for j=1:1:n-i
          fprintf('%6.4f\t',yd(i,j));
    end
end
sum=y(1);
for i=1:1:n-1
    multiplier=1;
    for j=1:1:i
        multiplier=multiplier*(xf-x(j));
    end
    sum=sum+yd(1,i)*multiplier;
end
fun1=sum;
        