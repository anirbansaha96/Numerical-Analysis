function fun1=func_lagrange(xf)
n=input('\n N : ');
x=zeros(n);
y=zeros(n);
sum=0;
for i=1:1:n
    x(i)= input('\n x : ');
    y(i)= input('\n y : ');
end

for i=1:1:n
    multiplier=1;
    for j=1:1:n
        if i~=j
            multiplier=multiplier*((xf-x(j))/(x(i)-x(j)));
        end
    end
    sum=sum+multiplier*y(i);
end
fun1=sum;  