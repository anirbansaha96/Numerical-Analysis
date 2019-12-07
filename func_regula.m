function fun1=func_regula(a,b,max_iterations,epsilon)
b1=b;
if func_test(a)*func_test(b) < 0
    fprintf("\n N |\t\t a\t  |\t b\t\t  |\t c\t\t  |\t f(a)\t\t|\t f(b) \t\t|\t f(c)  \t\t|\n");
    for i=1:1:max_iterations
        c=b-((b-a)/(func_test(b)-func_test(a)))*func_test(b);
        fprintf(" %d |\t %f |\t %f |\t %f |\t %f \t|\t %f \t|\t %10.5f \t|\n",i,a,b,c,func_test(a),func_test(b),func_test(c));    
        if abs(func_test(c))<epsilon
            break;
        else
            if func_test(a)*func_test(c)<0
                b=c;
            else 
                a=c;
            end
        end
    end
    fprintf("\n The Roots is ");
    fun1=c;
else
    fprintf("\n Interval has zero or even number of roots \n");
    fun1=b1+1000;
end
