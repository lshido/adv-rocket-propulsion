function x = mach_solver(expansion_ratio, g, accuracy)
    syms M
    f = expansion_ratio - ((1/M)*((2+(g-1)*M^2)/(g+1)))^((g+1)/(2*(g-1)));
    d = diff(f);
    M = 1.2;
    for n = 1:50
        disp(n);
        disp(double(M))
        M_guess = M - subs(f)/subs(d);
        error = abs(M - M_guess);
        disp(double(error));
        if error < accuracy
            break;
        else 
            M = M_guess;
        end
    end
    x = M;
    fprintf("You have called mach_solver!\n");
end