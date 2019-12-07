function fun1=func_fixed(a,max_iterations,epsilon)
fprintf("N |\t a \t\t\t|\t f(a) \t|\n");
for i=1:1:max_iterations
    if abs(fun_sine(a)) > epsilon
        a=func_sin_iterate(a);
        fprintf("%d | %f \t| %f \t|\n",i,a,fun_sine(a));
    else
        break;
    end
end
fprintf("\n The root is : ");
fun1=a;