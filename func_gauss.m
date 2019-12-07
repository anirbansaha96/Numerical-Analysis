function fun1=func_gauss(A,b)
Ab=[A b];
[m n]=size(Ab);
x=zeros(m,1);
for k=1:1:m-1
    for i=k+1:1:m
        multi=Ab(i,k)/Ab(k,k);
        for j=k:1:n
            Ab(i,j)=Ab(i,j)-multi*Ab(k,j);
        end
    end
end
Ab
A=Ab([1:m],[1:m]);
b=Ab([1:m],[n]);
fun1=func_back_subs(A,b);