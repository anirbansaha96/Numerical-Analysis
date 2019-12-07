function fun1=func_newton(a,n,eps)
fprintf("N | a \t\t\t|\t f(a)\n");
for i=1:1:n
    if abs(func_test(a))>eps
        a=a-func_test(a)/fun_test_derivative(a);
        fprintf("%d | %f \t| %f\n",i,a,func_test(a));
    else
        break;
    end
end
fprintf("\nThe Root is :");
fun1=a;