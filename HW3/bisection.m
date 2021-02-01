function c = bisection(f,a,b,tol)
    if f(a)*f(b) < 0
       while (b-a)/2 > tol
            c = (a+b)/2;
            if f(c) == 0
                break;
            end
            if f(a)*f(c) < 0
                b=c;
            else
                a=c;
            end
       end
    else
        disp('Try different interval.')
    end
end